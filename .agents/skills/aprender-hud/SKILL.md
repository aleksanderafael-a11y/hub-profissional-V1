---
name: aprender-hud
description: Conferir existência, ausência, remoção ou conteúdo vazio no escopo acessível da cópia, com controle positivo e conclusão proporcional à cobertura. Não usar para contestar declaração da pessoa sobre o que ela controla nem para decidir divergência entre fontes.
---

# Aprender HUD — conferência de existência

Antes de afirmar ausência, testar o mesmo método e critério em um alvo comprovadamente presente. Trabalhar um caso por vez, dentro da cópia e das permissões da sessão. Não procurar em pastas superiores, vizinhas ou projeto de origem. A pessoa não precisa autorizar busca necessária dentro do escopo já autorizado; acesso externo ou não concedido não é presumido.

## Procedimento

1. Definir o objeto, o critério e o escopo necessário à afirmação. Escolher controle positivo pertinente, conhecido e acessível no mesmo escopo ou ambiente; usar o mesmo método e critério na busca e no controle. Se o controle falhar, corrigir o método; se falhar duas vezes, parar e declarar método não verificado.
2. Para caminho conhecido, resolver o caminho dentro da cópia e verificá-lo diretamente. Uma falha nesse caminho só cobre esse local; para afirmar ausência em escopo maior, buscar também no escopo correspondente, inclusive arquivos ocultos ou ignorados quando pertinentes e acessíveis. Registrar pastas e limitações; cobertura parcial, inacessível ou falha não demonstra ausência.
3. Para afirmar que um arquivo removido não está no histórico, verificar também o histórico local somente se houver Git, acesso permitido e histórico pertinente. Usar o mesmo procedimento com controle positivo de um caminho cujo histórico seja comprovadamente conhecido nesse repositório. Resultado vazio sem controle válido, histórico incompleto ou indisponível é inconclusivo. Não presumir histórico de outra cópia nem buscar remoto sem acesso e autorização. Se a pergunta for apenas sobre o estado atual do disco, limitar a conclusão a ele e não exigir histórico.

## Resultados

- **Existe:** apontar caminho e evidência encontrada.
- **Não encontrado no escopo verificado:** informar escopo, método e limites; afirmar ausência nesse escopo somente com cobertura adequada e controle positivo.
- **No histórico, fora do local atual:** informar commit e caminho verificados; isso não prova descarte intencional.
- **Inconclusivo / não verificável:** indicar a cobertura, o acesso, histórico ou controle que faltou. Não converter em ausência.
- **Método não verificado:** controle falhou; não concluir sobre o objeto.
- **Fora de um mapa ou lote:** quando o objeto existe mas está fora de uma seleção, indicar o escopo e as fontes, sem chamar de inexistente.

Este método não escolhe recurso pela finalidade, não prova funcionamento e não amplia permissões. Para divergência, atualidade ou alegações, usar [Evidência e leitura](../../../rules/evidencia-e-leitura.md).
