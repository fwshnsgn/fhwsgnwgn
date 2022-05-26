#!/bin/bash
ss version
mkdir /.config
mkdir /.config/rclone/
wget "$CONFIG_IN_URL" -O /.rclone.conf
ss listremotes
ss serve http $CLOUDNAME: --addr :$PORT --no-modtime --dir-cache-time 48h
