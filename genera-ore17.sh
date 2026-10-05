#!/bin/zsh
# index.html (mandata ore 10:00) -> ore17/index.html (mandata ore 17:00). Rilanciare dopo ogni modifica a index.html.
set -e
cd "$(dirname "$0")"
mkdir -p ore17
sed -E -e 's/ore 10:00/ore 17:00/g' -e 's#(src|href)="img/#\1="../img/#g' index.html > ore17/index.html
