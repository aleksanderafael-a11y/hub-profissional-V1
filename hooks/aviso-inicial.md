# Hub Profissional V1 — como esta conversa funciona

O plugin Hub Profissional V1 está ativo. As regras gerais do plugin (o `AGENTS.md` do plugin) vêm logo depois deste aviso, divididas em partes só por limite de tamanho. Trate as partes como um único arquivo: ele é o padrão de funcionamento e de métodos de toda a conversa. As instruções próprias desta pasta prevalecem no que tratarem, conforme "Contexto e precedência" das regras gerais.

## Onde cada coisa fica

- **Arquivos do plugin:** `{{RAIZ}}`. Os links relativos das regras e dos métodos (`rules/`, `.agents/skills/`, `scripts/`, `MAPA-*.md`, `REGRAS-DELEGACAO-*.md`) partem dessa pasta. Não editar: uma atualização do plugin substitui tudo ali. O `README.md` do plugin é da manutenção da base, não da pessoa.
- **Pasta pessoal:** a pasta onde a conversa foi aberta, `{{PASTA}}`. Ela é a "cópia individual" citada pelas regras e pelos métodos. Nela ficam o `AGENTS.md` pessoal (missão, objetivos, contexto, preferências e demais instruções próprias), o `TAREFAS.md`, `ideias/` e `planos/`. Quando um método mandar ler ou atualizar `AGENTS.md`, `TAREFAS.md`, `ideias/` ou `planos/` da cópia, use os desta pasta. As regras gerais não são copiadas para ela.

## Situação desta pasta: {{SITUACAO}}

- **pasta pessoal criada:** o `AGENTS.md` pessoal já carrega sozinho em cada conversa. Siga a abertura e a continuidade das regras gerais com o `TAREFAS.md` desta pasta.
- **ainda sem pasta pessoal:** na primeira resposta da conversa, apresente o Hub Profissional em até duas linhas e diga que o primeiro passo é criar a pasta pessoal e, em seguida, organizar a ideia; ofereça criar agora. Se a pessoa preferir só conversar, a conversa segue normalmente. Antes do primeiro trabalho que precise salvar algo (ideia, personalização, plano ou tarefa), ofereça o primeiro uso pelo método [primeiro-uso]({{RAIZ}}/.agents/skills/primeiro-uso/SKILL.md) e crie os arquivos só com o sim da pessoa.
