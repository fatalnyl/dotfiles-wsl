http_proxy=http://proxy-chain.intel.com:911 https_proxy=http://proxy-chain.intel.com:912
git config --global http.proxy http://proxy-chain.intel.com:912
git config --global https.proxy http://proxy-chain.intel.com:912

#!/bin/bash
CONFIG="$HOME/.ssh/config"

# Add proxy for github.com if not already present
if ! grep -q '^Host github.com' "$CONFIG"; then
  echo "Adding SSH proxy for github.com..."
  cat >> "$CONFIG" <<'EOF'

Host github.com
   ProxyCommand connect -a none -S proxy-dmz.intel.com:1080 %h %p
EOF
else
  echo "SSH entry for Github already exists."
fi
