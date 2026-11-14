# Hub Profissional V1 - rotina de inicio de conversa para Windows sem Git Bash (Codex: commandWindows).
# Mesma logica de regras-gerais.sh; compativel com Windows PowerShell 5.1 e PowerShell 7.
# Uso: regras-gerais.ps1 <parte>. A parte 1 inclui o aviso de onde ficam plugin e pasta pessoal.
param([int]$Parte = 1)

$Ultima = 4      # numero de rotinas declaradas em hooks/hooks.json
$Limite = 6000   # bytes por parte
$utf8 = New-Object System.Text.UTF8Encoding($false)
[Console]::OutputEncoding = $utf8

$entrada = ''
if ([Console]::IsInputRedirected) { $entrada = [Console]::In.ReadToEnd() }

$raiz = $env:CLAUDE_PLUGIN_ROOT
if (-not $raiz) { $raiz = $env:PLUGIN_ROOT }
if (-not $raiz) { $raiz = Split-Path -Parent $PSScriptRoot }
$regras = Join-Path $raiz 'AGENTS.md'
if (-not (Test-Path -LiteralPath $regras)) {
  [Console]::Out.WriteLine("Hub Profissional V1: AGENTS.md do plugin nao encontrado em $raiz.")
  exit 0
}

$saida = New-Object System.Text.StringBuilder

if ($Parte -eq 1) {
  $pasta = $env:CLAUDE_PROJECT_DIR
  if (-not $pasta -and $entrada) {
    try { $pasta = ($entrada | ConvertFrom-Json).cwd } catch { $pasta = $null }
  }
  if (-not $pasta) { $pasta = (Get-Location).Path }
  $situacao = 'ainda sem pasta pessoal'
  $d = $pasta
  while ($d) {
    $arq = Join-Path $d 'AGENTS.md'
    if ((Test-Path -LiteralPath $arq) -and (Select-String -LiteralPath $arq -SimpleMatch 'hub-profissional:pasta-pessoal' -Quiet)) {
      $situacao = 'pasta pessoal criada'; $pasta = $d; break
    }
    $p = Split-Path -Parent $d
    if (-not $p -or $p -eq $d) { break }
    $d = $p
  }
  $aviso = [IO.File]::ReadAllText((Join-Path $raiz 'hooks\aviso-inicial.md'), $utf8)
  $aviso = $aviso.Replace('{{RAIZ}}', $raiz).Replace('{{PASTA}}', $pasta).Replace('{{SITUACAO}}', $situacao)
  [void]$saida.Append($aviso.TrimEnd()).Append("`n`n")
}

# Divide nos titulos de secao (## e ###) e agrupa os blocos ate o limite.
$linhas = [IO.File]::ReadAllText($regras, $utf8) -split "`r?`n"
if ($linhas.Count -gt 0 -and $linhas[-1] -eq '') { $linhas = $linhas[0..($linhas.Count - 2)] }
$partes = New-Object System.Collections.Generic.List[string]
$atual = ''; $bloco = ''
function Fecha {
  if ($script:bloco -eq '') { return }
  if ($script:atual -ne '' -and ($utf8.GetByteCount($script:atual) + $utf8.GetByteCount($script:bloco)) -gt $Limite) {
    $partes.Add($script:atual); $script:atual = ''
  }
  $script:atual += $script:bloco; $script:bloco = ''
}
foreach ($l in $linhas) {
  if ($l -match '^##+ ') { Fecha }
  $bloco += $l + "`n"
}
Fecha
if ($atual -ne '') { $partes.Add($atual) }

$n = $partes.Count
$total = [Math]::Min($n, $Ultima)
if ($Parte -le $total) {
  [void]$saida.Append("# Regras gerais do Hub Profissional V1 (AGENTS.md do plugin) - parte $Parte de $total`n`n")
  $fim = if ($Parte -eq $Ultima) { $n } else { $Parte }
  for ($i = $Parte; $i -le $fim; $i++) { [void]$saida.Append($partes[$i - 1]) }
}
[Console]::Out.Write($saida.ToString())
exit 0
