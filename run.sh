#!/bin/sh
chmod +x /conf/on-complete.sh
touch /conf/aria2.session
aria2c --conf-path=/conf/aria2.conf
