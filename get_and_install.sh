#!/bin/bash
# Скачивает части из репозитория и собирает Full_customize_GROK в /tmp
set -euo pipefail
REPO_RAW="https://raw.githubusercontent.com/FF3mail/Full_customize_GROK/main"
WORKDIR=$(mktemp -d)
cd "$WORKDIR"
for i in 0 1 2; do
  curl -fsSL "$REPO_RAW/bootstrap_part_$i" -o "bootstrap_part_$i"
done
cat bootstrap_part_0 bootstrap_part_1 bootstrap_part_2 > bootstrap.sh
chmod +x bootstrap.sh
bash bootstrap.sh
echo "Далее: sudo /tmp/Full_customize_GROK/install.sh"
