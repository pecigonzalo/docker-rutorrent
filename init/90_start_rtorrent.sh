#!/bin/sh

# clear hanging .dtach file from previous session
if [ -f "/config/rtorrent/rtorrent_sess/.dtach" ]; then
rm 
/config/rtorrent/rtorrent_sess/.dtach
sleep 1s
fi

dtach -n /config/rtorrent/rtorrent_sess/.dtach /sbin/setuser abc /usr/bin/rtorrent -n -o import=/config/rtorrent/rtorrent.rc
