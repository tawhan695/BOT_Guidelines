#!/bin/bash
cd ~
echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches
cp BOT_Guidelines/data.json data.json.backup
cp BOT_Guidelines/token.txt token.txt.backup
rm -r BOT_Guidelines
git clone https://github.com/tawhan695/BOT_Guidelines.git
cp data.json.backup BOT_Guidelines/data.json
cp token.txt.backup BOT_Guidelines/token.txt
cd BOT_Guidelines
go build main.go
cd ~
cp BOT_Guidelines/update.sh update.sh
chmod +x update.sh
cp BOT_Guidelines/bot.sh bot.sh
chmod +x bot.sh
reboot
