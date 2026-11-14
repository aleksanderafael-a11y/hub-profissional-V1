# Hub Profissional V1

Um sócio de IA dentro do Claude Code: organiza sua ideia, ajusta o jeito de trabalhar a você e monta o plano com você, passo a passo. Versão beta de teste.

## Como começar

1. Instale (no terminal):

   ```bash
   claude plugin marketplace add aleksanderafael-a11y/hub-profissional-V1
   claude plugin install hub-profissional@hub-profissional-v1
   ```

2. Crie uma pasta para o seu Hub (ou use a de um projeto seu) e abra o Claude Code nela.
3. Escreva "oi". O Hub se apresenta e oferece criar sua pasta pessoal.

Suas ideias, planos e tarefas ficam na sua pasta. Atualizar o plugin não apaga nada delas.

Para atualizar:

```bash
claude plugin update hub-profissional@hub-profissional-v1
```

---

## Para quem mantém a base

Esta pasta é a **base geral de entrega** do projeto, preparada para gerar cópias individuais. Não é o espaço de trabalho de uma pessoa: reúne instruções, métodos e um catálogo descritivo, sem dados pessoais, objetivos particulares nem trabalhos de destinatários. Cada cópia individual será preenchida e ajustada com a própria pessoa, conforme o que ela informar e confirmar.

## Partes do projeto

- [AGENTS.md](AGENTS.md): instruções de funcionamento, permissões e encaminhamento dos pedidos.
- `TAREFAS.md` (na pasta pessoal de cada pessoa, criada pelo modelo): andamento, pendências e próxima ação.
- `ideias/`: destino dos textos das ideias confirmadas e salvas durante a conversa.
- [Mapa de recursos](MAPA-RECURSOS.md): possibilidades descritas por nome e função, sem transferir suas implementações.
- [Mapa de capacidades](MAPA-CAPACIDADES.md): dificuldades comuns, método instalado correspondente e o que ele não resolve.
- [Adaptador](.agents/skills/adaptador/SKILL.md): organização e registro da ideia.
- [Avaliador de complexidade](.agents/skills/avaliador-complexidade/SKILL.md): profundidade proporcional à necessidade.
- [Personalização](.agents/skills/personalizacao/SKILL.md): ajuste das instruções a partir da ideia confirmada.
- [Construtor](.agents/skills/construtor/SKILL.md): plano de construção a partir da ideia e das instruções personalizadas; identifica pesquisas que ajudariam a decidir e encaminha aos métodos responsáveis.
- [Modos e papéis](rules/modos-hub.md): índice dos métodos e papéis disponíveis nesta cópia e de seus gatilhos.
- [Direção profissional](.agents/skills/hud-direcao-profissional/SKILL.md): reflexão, prioridades e escolha de caminhos com o contexto da cópia; inclui referência de tom e casos fictícios de avaliação, sem comportamento validado nesta base.
- [Auditor de governança](.agents/skills/auditor-governanca/SKILL.md): revisão independente e somente em leitura de mudanças em instruções e configurações, conforme as permissões locais; não aplica alterações nem substitui aprovação humana exigida.
- [Evidência e leitura](rules/evidencia-e-leitura.md): sustentação das afirmações, atualidade e leitura proporcional das fontes.
- [Aprender HUD](.agents/skills/aprender-hud/SKILL.md): conferência de existência ou ausência no escopo acessível, com controle positivo e limites declarados.
- [Busca por termos](scripts/buscar-ligacoes-por-termos.ps1): localiza termos, arquivos e trechos informados para leitura manual; não escolhe recursos pela finalidade.
- [Modo Sócio-Sênior](rules/modo-socio-senior.md): análise de caminhos, preparação de pedidos de pesquisa e avaliação das respostas.
- [Protocolo Executor](rules/protocolo-executor.md): executa tarefa indicada, confere o resultado e respeita autorização e parada.
- [Escrita e fechamento](rules/escrita-e-fechamento.md): organiza arquivos, fontes, mapas e registros dentro das permissões da cópia.
- [Protocolo Demanda](rules/protocolo-demanda.md): seleção do ambiente destinatário, preparo da instrução e conferência do resultado recebido, sem refazer a pesquisa.
- [Operação eficiente](.agents/skills/operacao-eficiente-hub/SKILL.md): escolha proporcional entre trabalho direto, leitura delimitada e apoio, com medição e parada.
- [Regras de Delegação](REGRAS-DELEGACAO-AUXILIARES.md) e [consulta](REGRAS-DELEGACAO-CONSULTA.md): critérios e salvaguardas para escolher e usar apoio; a lista de auxiliares começa vazia e é preenchida na personalização da cópia.
- [Protocolo Melhoria](rules/protocolo-melhoria.md): desenvolver contribuições, comparar alternativas com o que já funciona e recomendar melhorias; incorporado **em teste**, sem comportamento validado nesta base.
- [Protocolo Manutenção](rules/protocolo-manutencao.md): diagnostica defeitos, escolhe correção proporcional e verifica sua resolução; incorporado **em teste**, sem comportamento validado nesta base.
- `planos/`: destino criado ao salvar os planos confirmados; aprovar um plano não autoriza executá-lo.

O percurso permanece **ideia → personalização → plano**, conforme a escolha da pessoa. A pesquisa pode apoiar qualquer etapa quando ajudar uma decisão, mas não é obrigatória. A IA pode pesquisar no próprio ambiente apenas com capacidade e autorização, ou preparar um pedido para outra conversa ou ferramenta. Referências no índice a recursos não instalados não os tornam disponíveis. A inclusão dos métodos não importa todas as suas dependências nem autoriza executar planos, instalar ferramentas, acessar contas ou enviar dados.

## Plugin Hub Profissional V1

Esta pasta também é o plugin **Hub Profissional V1**, instalável no Claude Code e no Codex a partir do repositório público no GitHub. As duas ferramentas usam os mesmos arquivos de método.

- `.claude-plugin/plugin.json` e `.claude-plugin/marketplace.json`: manifesto e catálogo do Claude Code.
- `.codex-plugin/plugin.json` e `.agents/plugins/marketplace.json`: manifesto e catálogo do Codex.
- `hooks/`: rotina de início de conversa que carrega o `AGENTS.md` em toda conversa e diz à IA onde ficam o plugin e a pasta pessoal (`hooks.json`, `regras-gerais.sh`, `regras-gerais.ps1`, `aviso-inicial.md`).
- `modelo-pasta-pessoal/` e o método [primeiro uso](.agents/skills/primeiro-uso/SKILL.md): criam, com o sim da pessoa, a pasta pessoal na pasta onde a conversa é aberta (`AGENTS.md` pessoal, `CLAUDE.md`, `TAREFAS.md`, `ideias/`, `planos/`). Atualizações do plugin não mexem nela.

**Instalar no Claude Code:**

```bash
claude plugin marketplace add aleksanderafael-a11y/hub-profissional-V1
```

```bash
claude plugin install hub-profissional@hub-profissional-v1
```

**Instalar no Codex:**

```bash
codex plugin marketplace add aleksanderafael-a11y/hub-profissional-V1
```

Depois, no Codex, abrir `/plugins`, instalar **Hub Profissional V1**, aprovar a rotina de início em `/hooks` e abrir uma conversa nova.

## Implementação e validação

A base ainda está em preparação e **não está pronta para entrega**. Os métodos de organização de ideias, avaliação de complexidade, personalização e construção de planos ainda precisam de testes de comportamento em uso real. Conferências documentais e métodos escritos não comprovam seu funcionamento.
