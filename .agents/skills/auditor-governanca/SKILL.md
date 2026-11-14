---
name: auditor-governanca
description: Auditar de forma independente e somente em leitura mudanças propostas em regras, instruções, skills e configurações quando a pessoa pedir auditoria ou quando as instruções locais a exigirem. Não entra em revisão comum de conteúdo nem autoriza aplicar mudanças.
---

# Auditor de governança

Revisar uma mudança proposta antes de sua aplicação ou aprovação. Identificar riscos, conflitos e perdas de instrução; não editar arquivos, substituir a decisão da pessoa ou certificar trabalho do próprio autor.

## Permissões e independência

As condições de aprovação e alteração seguem o [AGENTS.md desta cópia](../../../AGENTS.md) e o pedido autorizado. Esta skill não cria obrigação de auditoria para toda mudança nem dispensa revisão ou aprovação pelo nome da ferramenta ou da IA autora. Alterar instruções continua dependendo do pedido ou da aprovação da pessoa, conforme as permissões locais.

- Quem escreveu ou alterou a proposta não pode emitir o veredito independente sobre ela. Uma autochecagem pode apoiar a preparação, mas não conta como auditoria independente.
- Se a sessão atual for autora, informar a limitação e preparar o material para outro revisor independente. Subagente da mesma sessão não conta como independente.
- Entregar ao revisor somente objetivo, diff ou comparação antes/depois, arquivos diretamente aplicáveis e critérios de aceite; não fornecer a conclusão desejada.
- Não acionar revisor externo, enviar dados ou pressupor ferramenta disponível. Eventual apoio segue as [Regras de Delegação](../../../REGRAS-DELEGACAO-AUXILIARES.md) locais e a autorização aplicável.
- Sem revisor independente disponível, declarar `REVISÃO INDEPENDENTE PENDENTE`; não tratar a autochecagem como aprovação.

## Entrada mínima

Receber:

1. objetivo declarado da mudança;
2. diff, patch ou comparação antes/depois;
3. instruções diretamente aplicáveis;
4. escopo autorizado e critério de sucesso.

Git não é obrigatório: uma comparação confiável antes/depois pode ser suficiente. Se não for possível reconstruir com segurança o que mudou, pedir esse insumo e declarar a revisão pendente. Não ampliar para uma revisão geral do projeto.

## Escopo de leitura

- Trabalhar somente em leitura.
- Ler primeiro a mudança e as instruções aplicáveis; abrir consumidores ou referências apenas quando a alteração puder afetá-los e dentro do acesso autorizado.
- Aplicar o AGENTS.md vigente para precedência e autorização; usar [Evidência e leitura](../../../rules/evidencia-e-leitura.md) para alegações, fontes e atualidade.
- Para função dos arquivos, fontes responsáveis, registros e ligações, consultar [Escrita e fechamento](../../../rules/escrita-e-fechamento.md), apenas como critério de revisão: o auditor não faz essas alterações.
- Para alegação de ausência, usar [Aprender HUD](../aprender-hud/SKILL.md) no escopo da cópia. Sem controle e cobertura suficientes, concluir inconclusivo.
- Não buscar fontes, memória, configurações ou ferramentas de outro projeto para completar a auditoria.

## O que conferir

Avaliar somente o que puder mudar o resultado:

1. **Autorização e escopo:** a proposta faz apenas o que foi autorizado?
2. **Precedência:** contradiz o pedido atual ou as instruções aplicáveis?
3. **Função e duplicação:** cria fontes concorrentes, mistura instrução com estado ou duplica método já existente?
4. **Integridade:** remove limite, exceção, autorização, evidência, referência ou comportamento ainda necessário?
5. **Consumidores:** referências, gatilhos, caminhos e arquivos dependentes continuam coerentes? Recursos ausentes estão identificados como não instalados?
6. **Operação e segurança:** amplia permissões, escrita externa, automação, descarte ou ação irreversível sem autorização?
7. **Verificabilidade:** o critério de sucesso pode ser conferido na mudança e no artefato real?

Não reprovar por preferência de estilo. Não propor reorganização, documentação ou arquitetura fora do problema encontrado. Texto coerente e caminhos válidos não comprovam comportamento em uso.

## Veredito e formato

Usar um destes vereditos:

- `APROVAR`: nenhum achado material no escopo conferido.
- `APROVAR COM CORREÇÕES`: correções localizadas e verificáveis são necessárias antes da aplicação.
- `BLOQUEAR`: conflito de autorização, perda material, risco não resolvido ou dependência exige decisão da pessoa.
- `REVISÃO INDEPENDENTE PENDENTE`: independência ou entrada mínima não atendida.

Responder de forma curta:

```text
Veredito: ...

Achados:
- [bloqueador|correção|observação] arquivo:linha — problema, impacto e correção mínima.

Cobertura: arquivos e trechos efetivamente conferidos.
Pendência: decisão da pessoa ou insumo necessário, somente quando houver.
```

Sem achados, escrever “Achados: nenhum achado material” e declarar a cobertura. Citar arquivo e linha quando o suporte estiver acessível; separar fato confirmado, inferência e pendência. Se faltar prova, indicar o limite em vez de certificar o que não foi verificado.

## Limites e fechamento

- O auditor não aplica patch, edita arquivos, atualiza fila, faz commit ou publica.
- Entregar o relatório à pessoa. Quem for autorizado a implementar resolve os achados e confere o resultado; a auditoria não autoriza a integração.
- Aprovação do auditor não amplia o escopo nem substitui aprovação humana exigida pelas instruções locais.
- Encerrar quando a mudança e seus consumidores diretamente afetados estiverem cobertos ou quando um impedimento impossibilitar a conferência.
