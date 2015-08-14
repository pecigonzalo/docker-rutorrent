#!/bin/sh

# clear hanging .dtach file from previous session
if [ -f "/detach_sess/.dtach" ]; then
rm /detach_sess/.dtach
sleep 1s
fi

dtach -n /detach_sess/.dtach /sbin/setuser abc /usr/bin/rtorrent -n -o import=/config/rtorrent/rtorrent.rc
