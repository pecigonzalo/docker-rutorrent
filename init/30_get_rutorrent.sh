#!/bin/bash

if [ ! -d "/config/www/.git" ]; then
  rm -rf /config/www
  git clone https://github.com/Novik/ruTorrent.git /config/www
else
  cd /config/www
  git pull
fi
chown -R abc:abc /config/www
