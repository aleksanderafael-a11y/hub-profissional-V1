# Protocolo Melhoria

## Quando usar

Acione quando a pessoa disser "modo melhoria" ou quiser aperfeiçoar algo, inclusive aproveitando pesquisa, referência, comparação ou crítica. Material trazido só para informação não aciona.

Durante outro trabalho, oportunidade concreta ligada ao resultado em curso vira uma linha no chat: o que percebeu e por que importa. A avaliação só começa se a pessoa pedir; a tarefa original segue.

Não aciona: defeito, erro que se repete ou algo que deixou de funcionar, que pertence ao modo Manutenção. A Melhoria olha o que pode ficar melhor mesmo funcionando (ganho, oportunidade, simplificar); defeito encontrado na análise é apontado numa linha e encaminhado conforme o `AGENTS.md`. O protocolo especializado de Manutenção ainda não foi instalado nesta cópia; não fingir disponibilidade nem colocar o defeito na lista de melhorias.

## Passos

1. **Entrada:** parte de um caso concreto: pedido ou material da pessoa, registro de feedback ou melhorias acessível nesta cópia, se houver, ou oportunidade percebida no trabalho. Confere se o assunto já está em um registro local ou em `TAREFAS.md` e reaproveita o que existir, sem presumir que um mapa especializado esteja instalado. Identifica o resultado buscado e cada contribuição do material; ao agrupar, preserva as diferenças. O tamanho da análise acompanha o caso. Com mais de uma ideia, a primeira resposta é a análise de cada uma no chat, com a fonte acessível no projeto. Link e repositório externo (GitHub, site) só se abrem com pedido ou autorização da pessoa e capacidade real no ambiente; sem isso, ficam marcados como "não aberto".
   *Pronto quando:* caso, resultado buscado e contribuições identificados, com registro ou fila local conferidos quando existirem.

2. **O que preservar:** anota o que hoje funciona e precisa ser preservado.
   *Pronto quando:* acertos a preservar identificados.

3. **Desenvolver antes de julgar:** para cada contribuição relevante, explica que problema resolve, para quem e que resultado pretende; se ela puder mudar o que existe, depois define como resolver, aproveitando o que já estiver definido. Mostra como ela se aplicaria ao caso e o que acrescentaria. Contribuição genérica vira proposta concreta, separando o que diz a fonte da interpretação da sessão. Conforme a função exigir, explicita condições de entrada, escolhas, ações, dúvidas ou exceções e parada. Lacuna encontrada vem com a proposta que a fecha; o que depender de informação indisponível fica declarado. Se existir um mapa local de conexões, consultá-lo somente quando o pedido envolver o percurso mais amplo ou suas conexões. Sem esse mapa, indicar o limite e usar as fontes locais pertinentes, sem inventar o recurso.
   *Pronto quando:* cada contribuição relevante tem problema, público e resultado, com a solução delineada quando puder mudar o que existe, a aplicação no caso e as lacunas declaradas.

4. **Comparação:** compara os caminhos pertinentes por ganho, possível prejuízo (inclusive os pares de equilíbrio do feedback e o risco de regressão) e forma (script, regra ou consulta), incluindo manter, simplificar ou reaproveitar o que existe. Em instrução, o prejuízo inclui o efeito no conjunto: trecho certo sozinho também sobra ou atrapalha quando carrega junto com outros que dizem o mesmo, ou quando vale para tudo. Para concluir "já coberto", põe lado a lado a proposta e a orientação vigente e mostra como esta conduziria a execução no caso, pelos elementos do passo 3: frase parecida prova só a intenção escrita, não o funcionamento. Cada contribuição recebe destino com motivo: aproveitar, adaptar, manter o existente, descartar ou deixar pendente por informação faltante. Fecha com uma recomendação e a premissa decisiva.
   *Pronto quando:* cada contribuição tem destino justificado, os caminhos foram comparados por funcionamento esperado, ganho e prejuízo, e toda equivalência declarada tem demonstração no caso e limite da evidência.

5. **Saída:** confere se a proposta atende ao uso final, preserva os acertos e cobre todas as contribuições, com destinos e pendências explicados; cortes preservam a função e o detalhe necessário. A recomendação traz o teste que poderia reprová-la e o efeito esperado; quando aplicada, o efeito vira a linha `Efeito esperado:`. No registro, o destino depende da recomendação: sem o "sim", entra no mapa de melhorias como candidata, com "volta quando" e critério; com o "sim", vai para a fila responsável. Usar o registro local de melhorias quando existir; caso contrário, apresentar a candidata à pessoa sem criar arquivo automaticamente. Com aprovação, encaminhar à fila responsável em `TAREFAS.md` ou à área pertinente. O modo para aí: o [construtor](../.agents/skills/construtor/SKILL.md) pode rever um plano quando solicitado, e a execução exige autorização específica no `AGENTS.md`.
   *Pronto quando:* completude conferida e recomendação entregue com teste e efeito esperado; com registro autorizado, está na fonte responsável.

**No chat:** entrega cada contribuição desenvolvida e o destino justificado de cada ponto, com o detalhe necessário parà pessoa revisar. Caminhos equivalentes podem ser resumidos juntos, sem apagar as diferenças nem o que explica seu funcionamento. Prejuízo, teste e efeito esperado aparecem só na recomendada, salvo quando mudarem outra escolha ou a pessoa pedir.

## Apoio e validação

**Casos de validação:**
1. Pesquisa trazida para aperfeiçoar algo, sem o nome do modo: reconhecer a intenção e desenvolver as contribuições.
2. Contribuição com frase parecida na base, mas execução incompleta: delinear a solução e demonstrar a lacuna antes do destino.
3. Pesquisa com vários pontos, incluindo manter e descartar: preservar cada contribuição e justificar seu destino, sem perda por agrupamento.
4. Uso comum do modo: aplicar os critérios do passo 3; reprova se abrir um mapa de conexões só para relê-los.
5. Pedido sobre o percurso mais amplo ou suas conexões: consultar o mapa local se existir; sem ele, indicar o limite sem inventar disponibilidade.
6. Oportunidade percebida pela IA durante outra tarefa: uma linha só, sem iniciar a avaliação; material só informativo também não inicia.

## Acesso rápido

Com acesso ao projeto: "Leia `rules/protocolo-melhoria.md` e aplique o Protocolo Melhoria nesta sessão."

Sem acesso a esta cópia: anexe este arquivo ou cole seu conteúdo e peça "Aplique o Protocolo Melhoria nesta sessão".
