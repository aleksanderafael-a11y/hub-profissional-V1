---
name: operacao-eficiente-hub
description: Escolher o caminho de execução direto, leitura delimitada ou auxiliar que preserve a qualidade com menor custo total, respeitando o tempo da pessoa, as autorizações e uma parada verificável.
---

# Operação eficiente

Escolher o caminho proporcional ao resultado, preservando qualidade e tempo da pessoa. Uma única ferramenta pode ser suficiente; não presumir outras IAs, acesso ou capacidade de delegar.

## Portão zero — grau de ação

Entendimento e planejamento podem consultar contexto em leitura quando necessário, nesta sequência econômica: conversa e anexos → contexto ou ponteiro já acessível → busca ou comando de leitura disponível → leitura parcial → parada por suficiência. Se a coleta for mecânica e delimitada, avaliar leitura delimitada ou auxiliar antes de fazê-la integralmente na sessão principal; usar auxiliar apenas se houver ganho líquido e autorização, conforme [Regras de Delegação](../../../REGRAS-DELEGACAO-AUXILIARES.md).

## Entender o pedido

Identificar o que a pessoa quer, para quê, a entrega suficiente e onde parar, seguindo o `AGENTS.md` local. Antes de criar solução, avaliar se algo novo é necessário; preferir reaproveitamento ou recurso disponível suficiente e só então criar o mínimo adequado.

Quando houver dúvida sobre capacidade ou responsabilidade, separar conhecimento necessário, habilidade comprovada e função de quem executa, valida e responde. Usar a checagem conforme o caso, sem transformar toda tarefa em formulário nem atribuir capacidades à pessoa sem evidência.

## Invariantes

- Direto é o padrão; delegar precisa compensar repasse, coordenação, conferência e tempo.
- Volume sozinho não justifica auxiliar.
- A sessão principal retém intenção, decisão, integração, arbitragem e verificação; auxiliar não dá o veredito final.
- Se coordenação, correção ou reabertura anularem a economia, voltar ao caminho mais simples.

## Sugestão de executor

Conforme o caso, considerar execução direta, subagente disponível na ferramenta da sessão ou outro auxiliar autorizado. Em tarefa simples, basta uma linha; detalhar por etapa apenas se ajudar. Aplicar a ordem e as salvaguardas de [Regras de Delegação](../../../REGRAS-DELEGACAO-AUXILIARES.md) e sua [consulta](../../../REGRAS-DELEGACAO-CONSULTA.md) quando necessária. Passar trabalho a outra conversa ou ferramenta segue o [Protocolo Demanda](../../../rules/protocolo-demanda.md).

Sugerir não autoriza gasto, envio, acesso, troca de configuração ou acionamento. Verificar as permissões da pessoa e o que a ferramenta realmente oferece. Se não houver auxiliar adequado, seguir diretamente quando possível.

## Modos

### Direto

Usar em tarefa pequena, sequencial ou quando dividir custar tanto quanto executar. Concluir de ponta a ponta sem delegar.

### Modo A — leitura delimitada

Quando a resposta puder ser conferida em fontes delimitadas: ponteiro exato → busca → leitura parcial → leitura adicional somente se necessária → parada por suficiência ou insuficiência. Em confronto de várias fontes, parar quando novas leituras apenas acrescentarem procedência sem mudar a decisão.

### Modo B — auxiliar executor

Usar divisão quando uma fatia delimitada puder ocorrer independentemente enquanto a sessão principal avança trabalho útil. Passar a tarefa inteira a outra conversa ou ferramenta é decidido pelo Protocolo Demanda e também exige pacote e retorno verificáveis. Vários auxiliares exigem fronteiras separadas, entregas próprias, contexto comum mínimo e integração barata. Leitura volumosa só entra quando busca e leitura parcial não bastarem e a divisão produzir ganho líquido.

O pacote informa escopo, acesso real, material, resultado, critério de aceite e parada, e pede retorno curto com evidências e referências, sem veredito final. Em busca ou conferência, pedir “não encontrado no escopo X” com controle positivo da busca (verificar que ela alcançou o escopo, por exemplo com um termo conhecido) e “não verificável” para o que estiver fora das fontes; não transformar ausência de achado em inexistência nem pedir ao auxiliar para recomendar corte. Decisões da pessoa, escopo indefinido e dependências fortes ficam com a sessão principal.

**Auxiliar que lê o projeto:** quando tiver acesso real ao material e autorização, o pedido pode apontar para o plano ou item e acrescentar contexto exclusivo da conversa, responsável pela revisão e o que faltar no alvo. Se não tiver acesso, levar o pacote completo e os materiais efetivamente entregues. Não presumir leitura nem editar arquivo de outro executor.

**Modelo — auxiliar executa e sessão principal revisa:** quando a mudança puder ser medida, registrar a situação inicial por método reproduzível disponível; no pedido, informar motivo, alvos permitidos e critérios de aceite, incluindo um caso real e uma condição anterior que deve continuar respeitada. O auxiliar apresenta resultados e evidências; a sessão principal confere o diff e uma borda pertinente e corrige ou encaminha falhas dentro da autorização. Se não houver instrumento ou medida, declarar o limite, sem inventar números ou testes.

**Modelo — sessões paralelas:** usar quando as frentes forem independentes, tocarem arquivos diferentes e tiverem entregas próprias. Explicar por que podem ocorrer em paralelo e indicar onde a etapa seguinte começa; conferir integração e dependências antes de prosseguir.

Ao registrar uso, aproveitar registro local pertinente se existir e houver autorização. Atualizar o conhecimento sobre um auxiliar e uma tarefa com a evidência e seus limites; não criar registro nem promover capacidade geral automaticamente.

## Medição e parada

Em teste relevante para decisão, definir antes hipótese, observação que a sustentaria ou refutaria, limite de esforço e condição de recuo. Depois, separar observado de interpretação no registro pertinente, se existir e seu uso estiver autorizado; não abrir ficha nova por padrão.

Em comparação, definir aceite de qualidade e registrar separadamente tempo, estabilidade, tokens e chamadas quando medidos. Manter tarefa, fontes e condições equivalentes salvo o fator testado; declarar diferenças, retrabalho e dados não medidos. Afirmar ganho apenas no escopo observado e com qualidade preservada.

Quando relevante, declarar buscas, leituras, releituras, fatias paralelas e erros. Telemetria não medida permanece não medida; não inventar economia. Interromper ou reverter se atrasar a entrega, faltar contexto duas vezes, a reabertura virar rotina ou coordenação e correção anularem o ganho. Desativar leitura delimitada se causar omissão ou retrabalho. Um sucesso não prova capacidade geral; uma falha não cria proibição permanente.
