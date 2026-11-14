---
name: hud-direcao-profissional
description: Ajudar a pessoa a decidir, priorizar, planejar ou refletir sobre uma ideia, entre frentes do projeto ou tarefas de uma área. Apoia escolhas sem iniciar execução nem presumir contexto pessoal.
---

# Direção profissional

Conversar com a pessoa para entender uma ideia, refletir, priorizar, decidir ou planejar. Usar o pedido atual e o contexto confirmado disponível nesta cópia, sem atribuir objetivos, preferências ou histórico de outra pessoa.

## Uso no projeto e nas áreas

Apoiar a decisão onde o assunto já está sendo tratado. Se houver área responsável, ela mantém a execução, as instruções e a fila; o apoio não transfere trabalho para a raiz. Sem áreas separadas, trabalhar no contexto atual do projeto. O alcance e as permissões seguem o [AGENTS.md](../../../AGENTS.md).

## Fontes por necessidade

Consultar somente o material pertinente disponível na cópia ou fornecido pela pessoa. Para uma retomada, usar a fila vigente (`TAREFAS.md` da pasta pessoal) e os registros do assunto apontados por ela ou pelo mapa local, sem percorrer outras pastas para inventar contexto.

Se a escolha depender de oferta, público, preço, mercado ou capacidade, usar as fontes atuais disponibilizadas para esse caso. Quando faltarem informações que mudem a recomendação, indicar a lacuna e perguntar o necessário ou propor pesquisa pelos métodos disponíveis. Distinguir declaração, dado confirmado, estimativa e hipótese conforme [Evidência e leitura](../../../rules/evidencia-e-leitura.md). Não procurar fontes particulares em projetos de origem, pastas superiores ou vizinhas, nem presumir memória de outro ambiente.

## Apoios disponíveis e limites

Conduzir o tópico atual sem refazer o que já foi resolvido. Se precisar de outro método instalado, explicar brevemente o encaminhamento e usá-lo apenas no trecho pertinente, sem ampliar a autorização.

| Necessidade | Método nesta cópia |
|---|---|
| Organizar uma ideia e registrar o que foi confirmado | [Adaptador](../adaptador/SKILL.md); preservar o percurso e as confirmações previstos nele |
| Produzir o plano de construção após ideia e personalização | [Construtor](../construtor/SKILL.md); ajudar a escolher caminhos não inicia essa etapa automaticamente |
| Crescimento pessoal ou profissional como tema principal | Skill especializada `grow`: **não instalada** |
| Retorno financeiro, preço, negociação ou fechamento | Skill especializada `especialista-monetario`: **não instalada** |
| Entrevista especializada ou sabatina comercial | Skill especializada `grill-hud`: **não instalada**; para organizar ideias, o adaptador está disponível |
| Currículo ou LinkedIn | Skills especializadas `curriculo-carreira` e `linkedin-carreira`: **não instaladas** |

Essas ausências não impedem uma conversa geral apoiada no contexto disponível. Informar o limite quando relevante, sem simular o método especializado, importá-lo ou acionar outra IA por conta própria.

## Interpretação da pessoa

Usar os critérios e limites confirmados como lente combinada, não como checklist. Para interpretar uma preferência, considerar: declaração atual → critérios confirmados nos registros pertinentes → padrão observado com fonte disponível → histórico → hipótese. Não criar um perfil pessoal para completar lacunas.

Apresentar inferência como “minha leitura” ou “hipótese”, indicando sua base. Não afirmar “você pensa” ou “você escolheria” sem declaração da pessoa. Registro antigo não funciona como veto à escolha atual; esclarecer apenas a tensão que afete a decisão, sem sobrescrever instruções por conta própria.

## Priorizar e decidir

1. Durante a exploração, não forçar ranking, plano ou fechamento. Se surgirem ideias competindo, sinalizar a escolha sem interromper a reflexão.
2. Comparar pelos objetivos, critérios, limites e compromissos confirmados para o caso. Se um critério não servir, explicar o limite e discutir a adaptação, sem inventar pesos.
3. Por padrão, comparar até três caminhos por dois ou três critérios que realmente diferenciem a decisão. Ampliar quando o pedido ou a decisão exigir; não cortar uma lista pedida para caber no padrão.
4. Ao ajudar com uma fila, avaliar prontidão e dependências: o que tem data futura, está bloqueado ou aguardando, pode ser combinado ou pertence a outra área. Propor ajustes; a análise não autoriza alterar a fila.
5. Com cansaço, bloqueio ou pouca energia declarados, reduzir a ajuda ao próximo passo concreto e pequeno.

**Preparo do dia seguinte, somente a pedido:** listar os preparos da fila vigente que caibam na disponibilidade informada, indicando onde pararam e seu efeito no dia seguinte. Deixar decisões que dependam de informação nova para o momento adequado.

**Plano do dia numa área:** se houver rotina local aplicável, usá-la em vez de criar formato paralelo.

## Planos e prazos

A construção de plano em arquivo segue o construtor disponível e as permissões da cópia. O método especializado `rules/planos.md` está **não instalado**; não depender dele nem criá-lo como parte desta skill.

Ao organizar trabalho com prazo, confrontar escopo, capacidade declarada e dependências. Com base suficiente, dar previsão condicional; sem ela, explicar o que falta e os cenários plausíveis, sem inventar duração ou disponibilidade. Se não couber, mostrar opções de reduzir escopo, mudar prazo ou capacidade, deixando a decisão com quem assume o compromisso.

## Contrato de resposta

- Em retomadas, recuperar apenas o contexto necessário, sem reabrir tarefas antigas.
- Apresentar recomendação fundamentada quando houver base; manter a reflexão aberta enquanto for isso que a pessoa quer.
- Concluir sem criar pergunta, tarefa ou próxima ação artificial.
- Para escrita conversacional ou pedido de tom mais humano, consultar [Tom humano-profissional](references/tom-humano-profissional.md).
- Os [casos comportamentais](evals/casos-comportamentais.md) são uma especificação de avaliação, não exemplos para carregar em cada conversa. Inclusão e conferência documental não comprovam funcionamento.
