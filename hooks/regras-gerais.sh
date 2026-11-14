#!/usr/bin/env bash
# Hub Profissional V1 - rotina de inicio de conversa (Claude Code e Codex; macOS, Linux e Git Bash no Windows).
# Imprime as regras gerais (AGENTS.md do plugin) em partes cortadas nos titulos de secao,
# porque cada rotina tem limite de contexto (Claude: 10.000 caracteres; Codex: ~2.500 tokens).
# Uso: regras-gerais.sh <parte>. A parte 1 inclui o aviso de onde ficam plugin e pasta pessoal.
# A ultima rotina declarada em hooks/hooks.json imprime tudo o que sobrar.
set -u

PARTE="${1:-1}"
ULTIMA=4        # numero de rotinas declaradas em hooks/hooks.json
LIMITE=6000     # bytes por parte

ENTRADA=""   # JSON que a ferramenta envia (traz "cwd", a pasta da conversa)
[ -t 0 ] || ENTRADA="$(cat 2>/dev/null)"

RAIZ="${CLAUDE_PLUGIN_ROOT:-${PLUGIN_ROOT:-}}"
[ -n "$RAIZ" ] || RAIZ="$(cd "$(dirname "$0")/.." && pwd)"
REGRAS="$RAIZ/AGENTS.md"
if [ ! -f "$REGRAS" ]; then
  echo "Hub Profissional V1: AGENTS.md do plugin nao encontrado em $RAIZ."
  exit 0
fi

paraunix() { if command -v cygpath >/dev/null 2>&1; then cygpath -u "$1"; else printf '%s' "$1"; fi; }
paraexibir() { if command -v cygpath >/dev/null 2>&1; then cygpath -w "$1"; else printf '%s' "$1"; fi; }

if [ "$PARTE" = "1" ]; then
  PASTA="${CLAUDE_PROJECT_DIR:-}"
  if [ -z "$PASTA" ]; then
    PASTA="$(printf '%s' "$ENTRADA" | tr -d '\n' | sed -n 's/.*"cwd"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | sed 's/\\\\/\\/g')"
  fi
  [ -n "$PASTA" ] || PASTA="$PWD"
  d="$(paraunix "$PASTA")"
  SITUACAO="ainda sem pasta pessoal"
  while :; do
    if [ -f "$d/AGENTS.md" ] && grep -q 'hub-profissional:pasta-pessoal' "$d/AGENTS.md" 2>/dev/null; then
      SITUACAO="pasta pessoal criada"; PASTA="$d"; break
    fi
    p="$(dirname "$d")"; [ "$p" = "$d" ] && break; d="$p"
  done
  aviso="$(cat "$RAIZ/hooks/aviso-inicial.md")"
  aviso="${aviso//'{{RAIZ}}'/"$(paraexibir "$RAIZ")"}"
  aviso="${aviso//'{{PASTA}}'/"$(paraexibir "$PASTA")"}"
  aviso="${aviso//'{{SITUACAO}}'/"$SITUACAO"}"
  printf '%s\n\n' "$aviso"
fi

LC_ALL=C awk -v lim="$LIMITE" -v parte="$PARTE" -v ultima="$ULTIMA" '
  function fecha() {
    if (bloco == "") return
    if (atual != "" && length(atual) + length(bloco) > lim) { n++; out[n] = atual; atual = "" }
    atual = atual bloco; bloco = ""
  }
  { sub(/\r$/, "") }
  /^##+ / { fecha() }
  { bloco = bloco $0 "\n" }
  END {
    fecha(); if (atual != "") { n++; out[n] = atual }
    total = (n < ultima) ? n : ultima
    if (parte > total) exit
    printf "# Regras gerais do Hub Profissional V1 (AGENTS.md do plugin) - parte %d de %d\n\n", parte, total
    fim = (parte == ultima) ? n : parte
    for (i = parte; i <= fim; i++) printf "%s", out[i]
  }
' "$REGRAS"
exit 0
