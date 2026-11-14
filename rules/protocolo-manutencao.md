# Protocolo Manutenção

**Função:** diagnosticar um defeito do projeto, escolher uma correção proporcional e acompanhar a verificação até haver prova de resolução ou uma pendência clara.

**Estado:** incorporado à base de entrega **em teste**. O protocolo de origem também está em teste; a incorporação e a conferência do texto não validam seu comportamento.

## Quando usar

Acione quando a pessoa disser “modo manutenção”, relatar um problema do projeto, pedir diagnóstico de erro ou quiser acompanhar um defeito até sua resolução.

Não aciona: aperfeiçoar algo que funciona, tarefa do [Protocolo Melhoria](protocolo-melhoria.md), nem apenas comparar o valor de alternativas. A Manutenção trata do que falhou, da gravidade e da prova de correção, sem exigir uma triagem de valor anterior. Se aparecer uma oportunidade de melhoria durante o diagnóstico, informe-a em uma linha, sem incluí-la na relação de defeitos nem começar outro trabalho sem pedido.

## Limites desta cópia

- Esta é a base geral de entrega; não grave nela defeitos, dados ou histórico particulares de uma pessoa. Nas cópias individuais, use somente o contexto e as fontes acessíveis e autorizadas.
- **Disponíveis:** as regras de autorização do [AGENTS.md](../AGENTS.md), a fila local `TAREFAS.md`, o [Protocolo Demanda](protocolo-demanda.md), o [Protocolo Melhoria](protocolo-melhoria.md) e [Evidência e leitura](evidencia-e-leitura.md). Consulte cada um apenas quando pertinente.
- **Não instalados:** o Protocolo Observador especializado, o registro especializado de problemas e feedback (inclusive a estrutura `problemas/`), o vocabulário especializado de revisão e o método especializado Loop do Valor. Não presumir seus arquivos, critérios de encerramento, scripts ou funcionamento, nem importá-los ou criá-los por este protocolo.
- Um relato, uma anotação ou um registro local existente pode servir de entrada. Se não houver lugar apropriado para registrar a ocorrência, organize as informações no chat e indique a pendência de registro; não declare que um arquivo foi atualizado nem crie uma estrutura por conta própria.

## Passos

1. **Situar e priorizar:** partir do problema relatado ou de evidência acessível na cópia. Se houver relato de observação ou feedback local, aproveitá-lo. Conferir se o defeito ou um parecido já foi descrito na fonte local pertinente, quando existir. Identificar IA e modelo apenas quando conhecidos, o comportamento esperado, o que aconteceu e os arquivos ou ligações envolvidos. Priorizar por impacto, recorrência e trabalho causado à pessoa.
   *Pronto quando:* problema, recorte e prioridade estão claros, com duplicidade verificada até onde as fontes disponíveis permitirem.

2. **Concentrar o problema:** reunir evidências, alternativas consideradas e decisões em um único lugar pertinente e autorizado da cópia individual, se existir; não espalhar relatos repetidos pela fila. `TAREFAS.md` pode indicar a pendência e apontar para esse material, sem substituir provas que não contém. Se não houver registro próprio, manter a síntese no chat e combinar como acompanhar a ocorrência. Reunir defeitos somente quando houver causa ou solução em comum. Propor em uma frase qual verificação demonstraria resolução e combinar o critério com a pessoa.
   *Pronto quando:* informações e critério de resolução estão reunidos no suporte disponível, com as lacunas de registro declaradas, sem inventar arquivo ou confirmação.

3. **Investigar as orientações envolvidas:** reconstruir, na medida em que houver evidência, quais instruções e materiais estavam acessíveis antes da ação errada: início da sessão, instruções da área, método pertinente e gatilhos realmente usados. Não presumir acesso a mensagens internas, carregamentos ocultos, outras sessões ou memórias externas. Para cada erro, localizar os trechos acessíveis que deveriam orientar a ação ou podem tê-la induzido e relacionar trecho, comportamento e resultado. Examinar separadamente contradições, sobreposições e precedência; uma instrução não prevalece só porque foi lida depois.
   *Pronto quando:* cada ligação tem evidência e as partes não reconstruíveis estão identificadas.

4. **Distinguir as causas:** separar sintoma de causa e classificar cada hipótese: regra inadequada, descumprimento, conflito de instruções, falha de carregamento ou ferramenta, ou limitação da IA ou modelo. Pode haver várias causas. Regra clara e disponível contrariada demonstra descumprimento, não explica automaticamente por que ocorreu. Atribuir a falha somente a uma IA ou modelo exige comparação que sustente essa conclusão.
   *Pronto quando:* cada causa possível está acompanhada da evidência e do limite da conclusão.
   *No chat:* apresentar o problema pelo nome e pelo impacto na pessoa, de forma breve; explicar causas quando mudarem a prioridade ou a solução. Detalhes de verificação ficam no material da ocorrência, se houver registro local autorizado.

5. **Comparar e escolher:** discutir as opções com a pessoa até que os caminhos estejam compreendidos. Recomendar a menor mudança suficiente, com benefício, risco e prova esperada. Antes de adicionar uma regra, verificar se uma alteração recente introduziu o erro e considerar revertê-la. Descumprimento isolado não justifica regra nova. A solução deve cobrir os pontos encontrados ou declarar o que fica de fora e por quê. A escolha e a autorização de executar seguem o `AGENTS.md`.
   *Pronto quando:* solução e critério de verificação estão escolhidos, com limites e exclusões claros.

6. **Executar e verificar:** aplicar a correção simples somente dentro do pedido e da autorização. Para uma mudança complexa a encaminhar a outra sessão ou ferramenta, preparar a instrução pelo [Protocolo Demanda](protocolo-demanda.md), com destinatária e acesso reais; não presumir transferência automática. Definir responsável, próxima ação e momento de conferir. Registrar o encaminhamento ou resultado no suporte combinado para acompanhar a ocorrência. Verificar a condição que reproduzia o erro, as ligações afetadas e o que precisava continuar funcionando. Arquivo alterado ou teste técnico bem-sucedido não comprova, sozinho, que o comportamento foi corrigido.
   *Pronto quando:* correção aplicada ou encaminhada com responsável e conferência definidos, e o estado da prova está declarado: passou, falhou ou ainda não foi testado.

7. **Encerrar ou rediagnosticar:** encerrar apenas quando o critério combinado no passo 2 for verificado. Se a questão for encaminhada a outra área ou sessão, conferir a existência do destino e levar a validação pendente. Se a verificação falhar, investigar a nova evidência antes de propor outra mudança; repetir teste só com correção ou informação nova. Tentativas sem avanço ou desgaste da pessoa pedem interrupção, resultado e próximo responsável definidos, sem declarar resolução.
   *Pronto quando:* defeito resolvido com evidência pelo critério acordado, ou aberto com resultado, limite e continuação explícitos.

## Apoio e testes

[Evidência e leitura](evidencia-e-leitura.md) apoia a separação entre prova, relato, hipótese e lacuna.

**Casos de teste a executar, não validados por esta incorporação:** correção apenas textual sem teste do comportamento; defeito recorrente depois de uma correção; transferência de ocorrência com verificação ainda pendente.

## Acesso rápido

Com acesso à cópia: “Leia `rules/protocolo-manutencao.md` e aplique o Protocolo Manutenção nesta sessão, dentro das permissões do projeto.”

Sem acesso à cópia: anexe este arquivo ou cole seu conteúdo e peça “Aplique o Protocolo Manutenção nesta sessão”.
