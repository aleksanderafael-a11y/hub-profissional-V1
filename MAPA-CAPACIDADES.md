# Mapa de capacidades — encontrar apoio pelo problema

**Função:** indicar um método **instalado nesta cópia** quando a pessoa relata uma dificuldade. É um índice de encaminhamento: **problema → método → o que ele não resolve**. Não cria uma solução, não substitui a leitura do método e não autoriza execução, instalação ou acesso externo.

Este índice mantém apenas situações atendidas por instruções, skills ou scripts realmente presentes nesta base. A escolha depende do sentido do pedido, não só da palavra usada. Os resultados de funcionamento ainda dependem de testes; “instalado” não significa “validado”.

**Como usar:** localizar a dificuldade, seguir o método pertinente e respeitar seus limites e as autorizações do [AGENTS.md](AGENTS.md). Se nenhuma linha servir, esclarecer a necessidade com a pessoa; não inventar um método nem procurar automaticamente fora da cópia. Para oferecer recursos **descritos, mas não instalados**, usar separadamente o [Mapa de recursos](MAPA-RECURSOS.md).

## A. Retomar, entender e decidir

| Problema ou pedido | Método disponível nesta cópia | O que não resolve |
|---|---|---|
| “Não sei onde parei nem o próximo passo.” | Fila de trabalho (`TAREFAS.md` da pasta pessoal) e [instruções de continuidade](AGENTS.md#abertura-e-continuidade). | A fila só retrata o que foi registrado; não recupera conversas nem comprova que o trabalho foi realizado. |
| “A conversa foi interrompida; preciso continuar em outra.” | Fila (`TAREFAS.md` da pasta pessoal) e [Protocolo Demanda](rules/protocolo-demanda.md), se precisar preparar repasse. | Um repasse não substitui conferir a situação atual nas fontes nem reconstitui conteúdo não registrado. |
| “Não consigo explicar o que quero.” | [Adaptador](.agents/skills/adaptador/SKILL.md) e [regra de esclarecer dúvidas](AGENTS.md#quando-agir-e-quando-perguntar). | Organizar uma ideia não prova sua viabilidade. |
| “Não sei qual caminho priorizar.” | [Direção profissional](.agents/skills/hud-direcao-profissional/SKILL.md) e [Modo Sócio-Sênior](rules/modo-socio-senior.md). | Ajudam a comparar opções, mas não substituem objetivos e escolhas confirmados pela pessoa nem executam a decisão. |
| “Preciso pesquisar para decidir.” | [Modo Sócio-Sênior, seção 4](rules/modo-socio-senior.md#4-preparar-pedidos-de-pesquisa-e-avaliar-seus-resultados) e [Protocolo Demanda](rules/protocolo-demanda.md), se houver repasse. | O método prepara e avalia pesquisa; não fornece por si acesso à internet, fontes atuais ou autorização para consultar terceiros. |

## B. Erros, correções e verificações

| Problema ou pedido | Método disponível nesta cópia | O que não resolve |
|---|---|---|
| “A IA repetiu um erro já corrigido.” | [Protocolo Manutenção](rules/protocolo-manutencao.md) e [registro de decisões e correções](AGENTS.md#memória-do-projeto-e-aprendizado). | O protocolo está em teste; registrar uma regra não prova que será seguida. |
| “Corrigir uma coisa quebrou outra.” | [Protocolo Manutenção](rules/protocolo-manutencao.md), com verificação do erro e das ligações afetadas. | Corrigir texto ou aprovar um teste técnico não comprova comportamento sem reproduzir o caso e verificar regressões. |
| “Funcionou bem; quero repetir esse resultado.” | [Regras de decisões e aprendizado](AGENTS.md#memória-do-projeto-e-aprendizado) e [Escrita e fechamento](rules/escrita-e-fechamento.md), conforme o pedido autorizado. | Registrar um acerto não cria memória automática entre ferramentas nem valida futuras respostas. |
| “Disseram que um arquivo ou uma regra não existe.” | [Aprender HUD](.agents/skills/aprender-hud/SKILL.md) e [Evidência e leitura](rules/evidencia-e-leitura.md). | Uma busca parcial ou arquivo não carregado não prova ausência; é necessário escopo verificável e controle positivo. |
| “A IA leu demais ou de menos.” | [Evidência e leitura](rules/evidencia-e-leitura.md) e [consulta proporcional](AGENTS.md#contexto-e-precedência). | Reduzir leitura não identifica sozinho a fonte correta nem substitui a evidência exigida. |
| “Uma regra, skill ou configuração foi alterada sem revisão.” | [Auditor de governança](.agents/skills/auditor-governanca/SKILL.md), conforme autorização e necessidade de independência. | A auditoria é somente em leitura; não altera, aprova por conta própria ou comprova funcionamento. |
| “A instrução existe, mas a IA não segue.” | [Protocolo Manutenção](rules/protocolo-manutencao.md) para investigar carregamento, conflitos, descumprimento e causa. | Encontrar a instrução contrariada não explica automaticamente por que a IA a desobedeceu. |

## C. Arquivos, estrutura e entregas

| Problema ou pedido | Método disponível nesta cópia | O que não resolve |
|---|---|---|
| “Vou mover um arquivo ou há referência quebrada.” | [Escrita e fechamento](rules/escrita-e-fechamento.md), com conferência das ligações atingidas. | Conferir as ligações não comprova que o conteúdo dos arquivos de destino esteja correto. |
| “A mesma informação está em vários lugares.” | [Escrita e fechamento](rules/escrita-e-fechamento.md) e [Busca por termos](scripts/buscar-ligacoes-por-termos.ps1) para localizar menções a conferir. | O script encontra trechos textuais; não prova duplicação de sentido, contradição ou correção sem leitura. |
| “O arquivo ficou grande ou difícil de consultar.” | [Escrita e fechamento](rules/escrita-e-fechamento.md) e [regras de comunicação](AGENTS.md#comunicação), preservando a fonte responsável. | Encurtar texto não dispensa preservar decisões, limites e referências. |
| “Depois de mudar algo, quero conferir as ligações.” | [Escrita e fechamento](rules/escrita-e-fechamento.md); para mudanças de instruções, [Auditor de governança](.agents/skills/auditor-governanca/SKILL.md). | Uma conferência pontual não garante cobertura total nem substitui teste de comportamento quando necessário. |
| “Uma alteração que fiz causou defeito.” | [Protocolo Manutenção](rules/protocolo-manutencao.md) e [Protocolo Executor](rules/protocolo-executor.md) para uma correção especificamente autorizada. | Diagnosticar não autoriza editar, reverter ou executar todo um plano. |

## D. Sessão, esforço e organização

| Problema ou pedido | Método disponível nesta cópia | O que não resolve |
|---|---|---|
| “O contexto está grande e preciso continuar depois.” | Fila de trabalho (`TAREFAS.md` da pasta pessoal) e [Protocolo Demanda](rules/protocolo-demanda.md), quando repasse for necessário. | Registrar a próxima ação não preserva automaticamente mensagens ocultas nem configurações de outra sessão. |
| “Vale a pena passar isso para outra IA?” | [Operação eficiente](.agents/skills/operacao-eficiente-hub/SKILL.md), [regras de delegação](REGRAS-DELEGACAO-AUXILIARES.md) e [Protocolo Demanda](rules/protocolo-demanda.md). | Escolher apoio não cria acessos, cotas, medição completa ou autorização para enviar dados. |
| “A IA misturou trabalhos de áreas diferentes.” | [Instruções de fronteiras e roteamento](AGENTS.md#missão-e-fronteiras). | O roteamento depende das áreas e instruções efetivamente criadas em cada cópia; não há correção automática. |

## E. Outra IA e recursos novos

| Problema ou pedido | Método disponível nesta cópia | O que não resolve |
|---|---|---|
| “Qual IA ou ferramenta deve fazer isso?” | [Operação eficiente](.agents/skills/operacao-eficiente-hub/SKILL.md), [delegação](REGRAS-DELEGACAO-AUXILIARES.md) e sua [consulta](REGRAS-DELEGACAO-CONSULTA.md). | Os métodos não presumem outras ferramentas disponíveis e não delegam ou instalam nada sem permissão. |
| “Outra IA entregou algo; como conferir?” | [Protocolo Demanda](rules/protocolo-demanda.md) e [Evidência e leitura](rules/evidencia-e-leitura.md). | Conferir o resultado pelas provas não é refazer todo o trabalho nem torna verdadeira uma alegação sem evidência. |
| “Quero criar uma skill, script ou automação.” | [Escrita e fechamento](rules/escrita-e-fechamento.md) para buscar antes de criar; [Mapa de recursos](MAPA-RECURSOS.md) para conhecer possibilidades. | Estar descrito no catálogo não significa instalado. O índice não autoriza construir, conectar ou instalar recursos. |
