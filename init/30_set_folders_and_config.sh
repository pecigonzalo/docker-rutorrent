#!/bin/bash
mkdir -p /config/rtorrent
if [ ! -f "/config/rtorrent/config.php" ]; then
cp /defaults/config.php /config/rtorrent/config.php
fi
cp /config/rtorrent/config.php  /config/www/conf/config.php

if [ ! -f "/config/rtorrent/rtorrent.rc" ]; then
cp /defaults/rtorrent.rc /config/rtorrent/rtorrent.rc
fi

cp /config/rtorrent/rtorrent.rc /abc_home/.rtorrent.rc
chown abc:abc -R /config/rtorrent /abc_home
