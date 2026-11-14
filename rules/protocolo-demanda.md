# Protocolo Demanda

**Limite:** a sessão de demanda não executa a tarefa destinada à outra IA ou sessão.

## Quando usar

Exemplos adicionais de pedidos: “prepara o prompt para [IA]” e “confere o que [IA] entregou”.

A decisão de repassar uma tarefa durante uma execução segue as permissões do `AGENTS.md` local e a capacidade real do ambiente. Construir ou revisar o plano segue o [construtor](../.agents/skills/construtor/SKILL.md) quando solicitado; executar a tarefa exige autorização específica. As skills especializadas de operação, Plano e Executor do projeto de origem não estão instaladas aqui.

## Passos

### 1. Situar a demanda

Identificar e seguir apenas as partes pedidas da demanda.

Partir do pedido, de um plano confirmado disponível em `planos/` ou de um repasse existente, aproveitando as decisões e a divisão do trabalho já feitas. Não exigir um plano quando a pessoa pedir diretamente uma pesquisa ou repasse.

Conferir o que já foi atendido na parte solicitada. Uma tarefa enviada ou executada ainda pode precisar de conferência. Evitar repetir o que estiver comprovadamente concluído e considerar apenas o que restar.

Aproveitar o objetivo, a autorização e o critério de conclusão já definidos no contexto. Se faltar uma definição que impeça atender ao pedido, suspender a parte afetada e perguntar.

*Pronto quando:* a parte solicitada e suas condições estão claras. Se faltar uma definição indispensável, a demanda fica aguardando essa resposta.

### 2. Escolher quem fará

Escolher conforme o pedido, as capacidades verificadas do ambiente atual ou da destinatária, os acessos realmente disponíveis, o custo total de tempo e trabalho, os limites declarados pela pessoa e as permissões do `AGENTS.md` local. Não presumir fornecedor de pesquisa, contas, cotas ou memórias compartilhadas nem acesso ao projeto de origem.

Quando a pessoa já tiver escolhido a destinatária, aproveitar essa decisão. Se houver impedimento concreto, explicar qual é e recomendar uma alternativa.

Se a sessão de demanda já leu o que a execução exige, ou se conferir o resultado exigiria ler as mesmas fontes, repassar custa mais do que fazer direto: recomendar isso à pessoa antes de preparar a instrução. Repassar compensa quando a destinatária vai ler o que a sessão de demanda não precisa, trabalhar em paralelo ou custar menos.

Capacidade ainda sem evidência fica identificada como hipótese. Disponibilidade e cota que só a pessoa conhece são confirmadas com ele quando necessárias à escolha.

*Pronto quando:* a destinatária está definida, com o motivo da escolha e a incerteza relevante, quando houver.

### 3. Preparar a instrução

Seguir os limites e autorizações do `AGENTS.md` local, conforme a tarefa e o contexto disponível à destinatária. Pedido de pesquisa segue também [Modo Sócio-Sênior §4](modo-socio-senior.md#4-preparar-pedidos-de-pesquisa-e-avaliar-seus-resultados).

Entregar uma instrução autossuficiente para o acesso real da destinatária, com objetivo, contexto suficiente, fontes ou anexos disponíveis, autorização, limites, resultado esperado, evidências de conclusão e ponto de parada. No chat, usar um bloco de código quando útil para copiar, preservando links e formatação.

Dizer na instrução o resultado esperado e onde parar. Pôr limite só onde houver risco concreto de a destinatária ampliar a tarefa, e conferir que limites e pedidos não se contradizem (ex.: "atualize a situação" junto com "preserve o conteúdo").

Antes de entregar, ler a instrução considerando o acesso real da destinatária. Conferir se o contexto, os ponteiros e os anexos disponíveis permitem compreender a tarefa, respeitar os limites, produzir a entrega e demonstrar sua conclusão. Corrigir dependências de informação que ela não receberá.

*Pronto quando:* a instrução está pronta para uso e pede o contexto e as evidências que permitem conferir a entrega e decidir com ela sem reler as fontes.

### 4. Conferir a entrega

Localizar o pedido e a instrução efetivamente enviados.

Conferir pela instrução efetivamente enviada, pela entrega e pelas evidências solicitadas, conforme o `AGENTS.md` local. A conferência não refaz o levantamento nem relê as fontes da tarefa; só abre o trecho de uma inconsistência concreta.

Distinguir falha da instrução, falha da execução e problema anterior à tarefa quando a evidência permitir. Se não permitir, declarar a incerteza.

Dar um dos vereditos, acompanhado da evidência:

- **Aprovado:** atende ao pedido e aos critérios conferidos.
- **Corrigir:** explicar o que precisa mudar e quem fará a correção.
  - Para escolher quem corrige, considerar também devolver o conserto à mesma conversa que executou: ela já tem o contexto, e basta uma mensagem curta com o que mudar. Conserto pequeno vai pelo caminho mais curto.
- **Não verificável:** informar o que não pôde ser comprovado e qual material ou verificação falta.

Se houver registro local de auxiliares, atualizar somente quando o uso criar ou mudar evidência de capacidade ou mostrar falha. Execução direta não entra nesse registro; reconhecer uma capacidade como padrão é decisão da pessoa. Não criar registro, instalar ferramenta ou promover capacidade automaticamente.

Quando esse registro couber no pedido autorizado, realizá-lo. Caso contrário, apresentar a proposta de registro junto do veredito.

Problema recorrente indica encaminhamento ao modo Manutenção, com evidência disponível. Se o protocolo especializado não estiver instalado, informar a limitação e preservar o apontamento para decisão da pessoa, sem inventar arquivo de feedback.

*Pronto quando:* o veredito está fundamentado e, quando necessária, a correção tem responsável definido.

## Encerramento

Encerrar quando todas as partes pedidas estiverem concluídas.

## Acesso rápido

**Com acesso ao projeto:** “Leia `rules/protocolo-demanda.md` e aplique o Protocolo Demanda nesta sessão.”

**Sem acesso a esta cópia:** fornecer este arquivo como anexo ou colar seu conteúdo junto do pedido.
