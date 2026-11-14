---
name: avaliador-complexidade
description: "Avaliar a complexidade de uma necessidade na abertura do adaptador e rever a avaliação após novas respostas. Usar para distinguir falta de informação e dependências reais, sem alterar o escopo ou as permissões."
---

# Avaliador de complexidade

Apoie o [adaptador](../adaptador/SKILL.md) com a classificação e, quando necessário, a dúvida que precisa ser esclarecida. Avalie o pedido conhecido, não o tamanho da descrição. A classificação orienta o aprofundamento da conversa; não é estimativa de esforço, viabilidade comprovada nem autorização de execução.

## O que avaliar

Observe três dimensões em conjunto:

- **Dependência entre as partes:** uma parte pode avançar com o que já se sabe, precisa do resultado de outra ou pode obrigar outras a serem revistas?
- **Coordenação:** basta a própria pessoa decidir ou outras pessoas, etapas ou sistemas precisam se alinhar de um modo que muda necessidades, decisões, a coordenação dos fluxos ou o caminho de entrega? Aprovação formal (dar o aval, liberar verba, assinar) sem esse efeito não é coordenação.
- **Previsibilidade do caminho:** os passos principais são conhecidos ou dependem de descobertas e decisões que podem mudar o caminho?

Separe objetivo claro de caminho claro. A pessoa pode saber exatamente o que quer, como organizar os pedidos da oficina, sem saber ainda o método ou a ferramenta. Método indefinido não indica complexidade alta nem ideia desorganizada: escolher o método é uma decisão a tomar, e só pesa na previsibilidade quando essa escolha pode obrigar a rever outras partes.

Falta de informação sobre o pedido não prova complexidade real. Se a descrição não permite entender essas dimensões, mantenha a classificação **em aberto** e indique a dúvida que mais muda a avaliação para o adaptador esclarecer com uma pergunta aberta. Não suponha dependências por causa do setor, das ferramentas possíveis ou da ambição aparente.

Um objetivo focado pode admitir classificação simples provisória mesmo com detalhes de execução desconhecidos, desde que esses detalhes não impeçam compreender as dependências. Reveja quando surgirem evidências novas.

## Critérios operacionais provisórios

| Modo | Critério para classificar | Como orientar a conversa |
| --- | --- | --- |
| **Simples** | Objetivo focado; partes independentes ou sequência direta conhecida; decisões concentradas na pessoa, ainda que alguém precise aprovar o resultado sem mudar o caminho; nenhuma dependência relevante identificada que possa mudar o caminho. | Mantenha o foco no objetivo e esclareça apenas o necessário para organizar a ideia. Não aumente o escopo para preencher detalhes de execução. |
| **Intermediário** | Há dependência real: um resultado condiciona outra parte, ou a participação de outra pessoa, etapa ou sistema muda necessidades, decisões ou o caminho de entrega. A ordem e a coordenação necessárias podem ser descritas e o caminho permanece previsível, sem revisão recorrente do conjunto. | Esclareça a relação que condiciona o resultado e quem precisa combiná-la. Registre a dependência no entendimento, sem elaborar o plano do construtor. |
| **Robusto** | Há dependências acopladas: uma decisão pode obrigar a rever várias partes; ou a coordenação entre partes com decisões próprias exige ajustes sucessivos; ou descobertas essenciais podem mudar o próprio caminho. | Aprofunde as relações e incertezas reais e preserve o que ainda precisa ser descoberto. Preveja consultar o mapa de recursos quando ele estiver disponível, sem bloquear a organização da necessidade. |

Várias entregas independentes não tornam o pedido intermediário. Uma sequência conhecida também não basta: deve haver uma dependência que condicione o resultado ou exija coordenação. Para distinguir intermediário de robusto, examine se é possível organizar as dependências em um caminho previsível ou se decisões e descobertas podem exigir rever esse caminho. Um único objetivo pode ser robusto quando essas relações existirem. Quando a pessoa trouxer projetos independentes juntos, avalie cada um por si, sem somar a complexidade de um ao outro.

## Uso e revisão

- Na abertura, use somente o que foi informado. Devolva a classificação com uma justificativa concreta ou deixe-a em aberto com a dúvida necessária. Não adote robusto como substituto para “não entendi”.
- Revise para cima ou para baixo quando novas respostas, correções ou esclarecimentos alterarem dependências, coordenação ou previsibilidade. Para reclassificar, nomeie a relação concreta que mudou: o que passou a depender de quê, ou quem passou a alterar necessidades, decisões ou o caminho. Quando aparecer a participação de alguém cujo efeito prático ainda não se conhece, como um sócio que precisa concordar, pergunte de forma aberta o que essa participação muda antes de reclassificar; até a resposta, mantenha a classificação vigente. Não mantenha uma classificação apenas por ter sido a primeira.
- Na organização da ideia, use a avaliação desde a abertura para orientar as perguntas. A explicação à pessoa segue o adaptador, em linguagem comum e com motivo concreto. Avalie a clareza e a complexidade da demanda; pedido curto ou vago não revela o entendimento da pessoa.
- Consulte o `MAPA-RECURSOS.md` deste projeto quando a consulta for pertinente. Se não estiver disponível, no modo robusto, deixe a consulta como pendência, sem depender dela para organizar a necessidade e sem afirmar que um recurso existe ou funciona.
- Os níveis de complexidade não mudam as permissões do AGENTS.md nem ampliam o escopo do pedido. Não autorizam ferramentas, conexões, pesquisa externa, escrita ou início do construtor.
