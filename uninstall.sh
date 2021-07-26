#!/bin/sh

cd "$(dirname "$(readlink -f "$0")")"
sudo rm /usr/local/bin/shop
SHELLS="$(cat /etc/shells|grep -v '/usr/local/bin/shop')"
echo "$SHELLS" | sudo tee /etc/shells
