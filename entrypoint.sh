#!/bin/bash
ss version
mkdir /.config
mkdir /.config/rclone/
wget "$CONFIG_IN_URL" -O /.rclone.conf
ss listremotes
ss serve http $CLOUDNAME: --addr :$PORT --vfs-read-chunk-size 128M
