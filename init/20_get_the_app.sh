#!/bin/bash
if [ ! -d "/app/rutorrent/.git" ]; then
mkdir -p /app
chown -R abc:abc /app
/sbin/setuser abc git clone https://github.com/Novik/ruTorrent.git /app/rutorrent
else
cd /app/rutorrent
git pull
fi
