#!/bin/bash
mkdir -p /config/rtorrent
if [ ! -f "/config/rtorrent/config.php" ]; then
cp /defaults/config.php /config/rtorrent/config.php
fi
cp /config/rtorrent/config.php  /config/www/conf/config.php

if [ ! -f "/config/rtorrent/rtorrent.rc" ]; then
cp /defaults/rtorrent.rc /config/rtorrent/rtorrent.rc
fi

if [ ! -d "/config/rtorrent/rtorrent_sess" ]; then
mkdir -p /config/rtorrent/rtorrent_sess
fi

if [ -f "/config/nginx/site-confs/default" ]; then
rm /config/nginx/site-confs/default
cp /defaults/rutorrent.www /config/nginx/site-confs/rutorrent
fi
chown abc:abc -R /config
chown abc:abc /downloads
