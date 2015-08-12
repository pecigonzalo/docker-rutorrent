#!/bin/bash
if [ ! -f "config/config.php" ]; then
cp /defaults/config.php config/config.php
fi
cp /defaults/config.php /app/rutorrent/conf/config.php
chown abc:abc config/config.php

