#requires -Version 7.0
<#
.SYNOPSIS
  Localiza termos e trechos nos arquivos informados para revisão manual.
.DESCRIPTION
  Busca apenas dentro da cópia. Não altera arquivos nem recomenda recursos.
  Informe arquivos e grupos de expressões regulares para cada busca. Caminhos
  externos, links e pontos de redirecionamento são recusados. Sem controle
  positivo e cobertura, ausência de achados não prova ausência no projeto.
.PARAMETER Arquivos
  Caminhos relativos à raiz da cópia ou absolutos dentro dela.
.PARAMETER Grupos
  Hashtable ordenada nome -> expressão regular, sem distinguir maiúsculas.
.PARAMETER IgnorarFonte
  Trecho opcional: caminho:linha-inicial-linha-final (inclusive).
.PARAMETER Largura
  Máximo de caracteres por trecho (padrão 200).
.EXAMPLE
  & ./scripts/buscar-ligacoes-por-termos.ps1 -Arquivos @('README.md') -Grupos ([ordered]@{'planejamento'='plano|planejar'})
.NOTES
  PowerShell 7. Retorna 0 em busca completa, inclusive sem achados; 2 em erro de leitura ou busca. A validação dos parâmetros pelo PowerShell pode retornar outro código.
  Verificação de ausência: consultar Aprender HUD e usar controle positivo.
#>
param(
    [Parameter(Mandatory)] [ValidateNotNullOrEmpty()] [string[]]$Arquivos,
    [Parameter(Mandatory)] [ValidateNotNull()] [System.Collections.Specialized.OrderedDictionary]$Grupos,
    [string]$IgnorarFonte,
    [ValidateRange(1,10000)] [int]$Largura = 200
)
$ErrorActionPreference = 'Stop'
$raiz = [IO.Path]::GetFullPath((Split-Path -Parent $PSScriptRoot))
$comparacao = if ($IsWindows) { [StringComparison]::OrdinalIgnoreCase } else { [StringComparison]::Ordinal }
function Resolver-Arquivo([string]$caminho) {
    if ([string]::IsNullOrWhiteSpace($caminho)) { throw 'Caminho vazio.' }
    $completo = [IO.Path]::GetFullPath($caminho, $raiz)
    $relativo = [IO.Path]::GetRelativePath($raiz, $completo)
    if ([IO.Path]::IsPathRooted($relativo) -or $relativo -eq '..' -or $relativo.StartsWith("..$([IO.Path]::DirectorySeparatorChar)") -or $relativo -eq '.') { throw "Caminho fora da cópia: $caminho" }
    $atual = $raiz
    foreach ($parte in $relativo.Split([IO.Path]::DirectorySeparatorChar)) {
        $atual = Join-Path $atual $parte
        $item = Get-Item -LiteralPath $atual -Force -ErrorAction Stop
        if (($item.Attributes -band [IO.FileAttributes]::ReparsePoint) -ne 0) { throw "Link ou redirecionamento recusado: $caminho" }
    }
    if (-not (Test-Path -LiteralPath $completo -PathType Leaf)) { throw "Não é arquivo: $caminho" }
    [pscustomobject]@{ Completo = $completo; Relativo = $relativo.Replace('\', '/') }
}
try {
    if ($Grupos.Count -eq 0) { throw 'Informe ao menos um grupo de termos.' }
    foreach ($nome in $Grupos.Keys) {
        if ([string]::IsNullOrWhiteSpace([string]$nome) -or [string]::IsNullOrWhiteSpace([string]$Grupos[$nome])) { throw 'Nome ou expressão de grupo vazio.' }
        [void][regex]::new([string]$Grupos[$nome], [Text.RegularExpressions.RegexOptions]::IgnoreCase, [TimeSpan]::FromSeconds(2))
    }
    $resolvidos = @($Arquivos | ForEach-Object { Resolver-Arquivo $_ })
    $fonte = $null; $ini = 0; $fim = 0
    if ($IgnorarFonte) {
        if ($IgnorarFonte -notmatch '^(.+):(\d+)-(\d+)$') { throw 'IgnorarFonte deve ser caminho:início-fim.' }
        $fonte = Resolver-Arquivo $Matches[1]; $ini = [int]$Matches[2]; $fim = [int]$Matches[3]
        if ($ini -lt 1 -or $fim -lt $ini) { throw 'Intervalo inválido.' }
    }
    $conteudos = @($resolvidos | ForEach-Object { ,@(Get-Content -LiteralPath $_.Completo -Encoding utf8 -ErrorAction Stop) })
    $relatorio = [System.Collections.Generic.List[string]]::new()
    $rotulo = if ($fonte) { "$($fonte.Relativo):$ini-$fim" } else { 'nenhuma' }
    $relatorio.Add("Arquivos pesquisados: $($resolvidos.Count) | fonte ignorada: $rotulo")
    foreach ($nome in $Grupos.Keys) {
        $regex = [regex]::new([string]$Grupos[$nome], [Text.RegularExpressions.RegexOptions]::IgnoreCase, [TimeSpan]::FromSeconds(2))
        $achados = [System.Collections.Generic.List[string]]::new()
        for ($a=0; $a -lt $resolvidos.Count; $a++) {
            $arquivo = $resolvidos[$a]; $linhas = $conteudos[$a]
            for ($i=0; $i -lt $linhas.Count; $i++) {
                $n = $i+1
                if ($fonte -and $arquivo.Completo.Equals($fonte.Completo, $comparacao) -and $n -ge $ini -and $n -le $fim) { continue }
                if ($regex.IsMatch([string]$linhas[$i])) {
                    $trecho = ([string]$linhas[$i]).Trim()
                    if ($trecho.Length -gt $Largura) { $trecho = $trecho.Substring(0,$Largura) + '…' }
                    $achados.Add("  $($arquivo.Relativo):${n}: $trecho")
                }
            }
        }
        $relatorio.Add(''); $relatorio.Add("## $nome ($($achados.Count))")
        foreach ($achado in $achados) { $relatorio.Add($achado) }
    }
    $relatorio | ForEach-Object { Write-Output $_ }
    exit 0
} catch {
    [Console]::Error.WriteLine("ERRO: $($_.Exception.Message)")
    exit 2
}
