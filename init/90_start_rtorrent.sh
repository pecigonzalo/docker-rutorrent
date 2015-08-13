#!/bin/sh
dtach -n /config/rtorrent/rtorrent_sess/.dtach /sbin/setuser abc /usr/bin/rtorrent -n -o import=/config/rtorrent/rtorrent.rc
