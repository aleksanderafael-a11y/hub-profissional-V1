# Modos e papéis do projeto

Este índice ajuda a escolher o método pelo pedido, sem substituir as instruções de cada um. A escolha expressa pela pessoa e o assunto já em andamento prevalecem sobre palavras isoladas. Aplicar apenas os métodos disponíveis e permitidos nesta cópia; a presença no índice não comprova teste de comportamento.

## Modos

| Modo | Quando usar | Método nesta cópia | Estado |
|---|---|---|---|
| Ideia | Organizar ou registrar uma ideia | [Adaptador](../.agents/skills/adaptador/SKILL.md) | Instalado |
| Plano | Construir plano após ideia e personalização | [Construtor](../.agents/skills/construtor/SKILL.md) | Instalado |
| Demanda | Escolher destinatário, preparar pedido ou conferir entrega de outra IA | [Protocolo Demanda](protocolo-demanda.md) | Instalado |
| Executor | Executar tarefa identificada em plano, fila ou pedido; “continua” isolado não basta | [Protocolo Executor](protocolo-executor.md) | Instalado; comportamento não testado nesta base |
| Melhoria | Aperfeiçoar algo que funciona, comparar ou avaliar contribuição | [Protocolo Melhoria](protocolo-melhoria.md) | Instalado, **em teste** |
| Manutenção | Diagnosticar defeito e verificar correção | [Protocolo Manutenção](protocolo-manutencao.md) | Instalado, **em teste** |

## Papéis atendidos por skills

| Papel | Quando usar | Método e estado |
|---|---|---|
| Direção profissional | Refletir, escolher caminhos ou priorizar | [Direção profissional](../.agents/skills/hud-direcao-profissional/SKILL.md): instalada; comportamento a testar |
| Operação eficiente e delegação | Escolher execução direta, leitura delimitada ou apoio | [Operação eficiente](../.agents/skills/operacao-eficiente-hub/SKILL.md), [delegação](../REGRAS-DELEGACAO-AUXILIARES.md) e [consulta](../REGRAS-DELEGACAO-CONSULTA.md): instalados |
| Auditoria de governança | Revisão independente de alterações em instruções, quando pedida ou exigida | [Auditor de governança](../.agents/skills/auditor-governanca/SKILL.md): instalado; inclusão não comprova auditoria realizada |

## Evidência e verificação

Para escolher apoio pelo problema e seus limites, consultar o [Mapa de capacidades](../MAPA-CAPACIDADES.md) quando não estiver claro qual método usar.

Para sustentar afirmações, conferir relatos e escolher como ler, usar [Evidência e leitura](evidencia-e-leitura.md). Para conferir existência ou ausência com controle positivo e escopo, usar [Aprender HUD](../.agents/skills/aprender-hud/SKILL.md). Ambos estão instalados; leitura e incorporação não comprovam comportamento.

## Escolher o modo

Sem método identificado, escolher pela finalidade e pelo “Quando usar” do recurso pertinente. Se o método já estiver claro, segui-lo diretamente. Anunciar a escolha só quando ela não for óbvia; se não houver encaixe, seguir o `AGENTS.md`. Ao combinar modos compatíveis, avisar antes e não iniciar etapas posteriores sem pedido.

Pesquisa pode apoiar qualquer modo, mas não é obrigatória. Para preparar ou avaliar pedido de pesquisa, usar [Modo Sócio-Sênior §4](modo-socio-senior.md#4-preparar-pedidos-de-pesquisa-e-avaliar-seus-resultados) e, para repassar, [Protocolo Demanda](protocolo-demanda.md). A pesquisa depende de capacidade e autorização reais, sem presumir recursos externos.
