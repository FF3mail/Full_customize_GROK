#!/bin/bash
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
cat "$DIR"/b64p_0.txt "$DIR"/b64p_1.txt "$DIR"/b64p_2.txt "$DIR"/b64p_3.txt | base64 -d > /tmp/bootstrap_fcg.sh
chmod +x /tmp/bootstrap_fcg.sh
bash /tmp/bootstrap_fcg.sh
echo "Далее: sudo /tmp/Full_customize_GROK/install.sh"
