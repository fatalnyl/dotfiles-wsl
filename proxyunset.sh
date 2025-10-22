unset {http,https,ftp}_proxy
unset {HTTP,HTTPS,FTP}_PROXY
git config --global --unset http.proxy 
git config --global --unset https.proxy

#!/bin/bash
CONFIG="$HOME/.ssh/config"
TMP="$(mktemp)"

echo "Removing SSH proxy for github.com..."
awk '
  $1=="Host" && $2=="github.com"{inblock=1;next}
  inblock && /^Host /{inblock=0}
  !inblock
' "$CONFIG" > "$TMP"

awk 'NF{print; blank=0} !NF && !blank{print ""; blank=1}' "$TMP" > "$CONFIG"
