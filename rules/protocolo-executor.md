# Protocolo Executor

**Função:** executar uma tarefa delimitada já indicada em plano, fila ou pedido, dentro da autorização recebida.

## Quando usar

Use quando a pessoa pedir execução de tarefa, item ou etapa identificada, ou disser “modo executor”. “Continue” ou “siga” exige que o contexto identifique a tarefa. O construtor prepara o plano; a aprovação do plano, por si só, não autoriza executá-lo. A autorização de uma etapa não autoriza as demais nem ações que exijam autorização específica.

Construir ou revisar o plano, preparar trabalho para outra conversa, diagnosticar um problema ou organizar ideias seguem os métodos pertinentes disponíveis na cópia, não este protocolo. Não presuma acesso a recursos ou permissões ausentes.

## Passos

1. **Entrada:** identifique a tarefa, resultado, limites, dependências e critério de conferência a partir do pedido e das fontes pertinentes. Confira se já foi feita: se sim, mostre a prova e pare. Se depender de decisão, acesso, resposta ou etapa anterior ainda indisponível, informe o que falta e pare. Diga em uma linha o que entregará. Se faltar algo indispensável para identificar a tarefa, autorização ou fim, esclareça antes da parte afetada.
   *Pronto quando:* a tarefa e suas condições estão claras, ou foi apresentada a prova de conclusão anterior, o impedimento ou a pergunta necessária.

2. **Execução:** faça o necessário para a tarefa indicada, inclusive criar ou corrigir o que ela exige, respeitando as permissões do projeto. Não amplie o objetivo nem replaneje por conta própria. Atualize as fontes e ligações necessárias dentro do escopo autorizado.
   *Pronto quando:* o trabalho pedido está feito, sem acrescentar outro objetivo.

3. **Desvios e bloqueios:** problema fora da tarefa não é corrigido por conta própria; relate-o quando pertinente. Se algo impedir a conclusão, diga o que ficou parcial ou não foi executado e por quê.
   *Pronto quando:* desvios pertinentes e eventuais impedimentos estão claros, sem apresentar trabalho parcial como concluído.

4. **Fim:** confira o resultado contra o critério recebido e mostre a evidência adequada. Em repositório Git já existente, alteração autorizada e conferida fecha com commit local só das alterações do lote, sem novo pedido; informe o código do commit junto da evidência. O commit registra a entrega e não equivale à aprovação; enviar ao repositório remoto exige autorização explícita. Orientação contrária da pessoa prevalece. Pare no fim da tarefa ou lote e respeite o ponto de parada. Oriente o próximo passo conforme as instruções da cópia, sem executá-lo automaticamente.
   *Pronto quando:* a prova ou limitação da conferência foi apresentada e o lote terminou no ponto pedido.

## Casos a verificar

Ainda sem teste de comportamento nesta base: tarefa já feita; problema fora do escopo; conferência que falha; alteração concorrente preservada; próxima etapa fora do lote. Presença do texto não comprova funcionamento.

## Acesso rápido

Com acesso à cópia: “Leia `rules/protocolo-executor.md` e execute a tarefa indicada.” Sem acesso, forneça o texto e a tarefa com seus limites.
