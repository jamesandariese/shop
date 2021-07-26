#!/bin/sh

cd "$(dirname "$(readlink "$0")")"
sudo cp shop /usr/local/bin
sudo chown 0:0 /usr/local/bin/shop
sudo chmod 0755 /usr/local/bin/shop
SHELLS="$(cat /etc/shells|grep -v '/usr/local/bin/shop';echo /usr/local/bin/shop)"
echo "writing new shells file"
echo "$SHELLS" | sudo tee /etc/shells
