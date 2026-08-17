#!/bin/bash
# Regenera los paquetes instalables desde skills/.
# .skill  → Claude Code y Cowork (se instalan de una en una)
# zip/    → Claude.ai (se suben a mano en Personalizar → Skills)
set -e
cd "$(dirname "$0")"
rm -rf instalar/zip && mkdir -p instalar/zip
for d in skills/*/; do
  s=$(basename "$d")
  rm -f "instalar/$s.skill" "instalar/zip/$s.zip"
  (cd skills && zip -qr "../instalar/$s.skill" "$s" -x '.*' -x '__MACOSX/*')
  cp "instalar/$s.skill" "instalar/zip/$s.zip"
  printf "  %-22s %5s KB · %s ficheros\n" "$s" "$(( $(stat -f%z "instalar/$s.skill")/1024 ))" "$(find "$d" -type f | wc -l | tr -d ' ')"
done
echo "Listo: $(ls instalar/*.skill | wc -l | tr -d ' ') paquetes .skill y $(ls instalar/zip/*.zip | wc -l | tr -d ' ') .zip"
