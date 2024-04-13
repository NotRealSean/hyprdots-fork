#!/bin/bash

echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!!!                                !!!"
echo "!!!   ONLY RUN THIS COMMAND ONCE   !!!"
echo "!!!                                !!!"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
sleep 3
echo "These command will be run: sudo ln -s /usr/lib/libdl.so.2 /usr/lib/libdl.so"
read -p "Continue? (y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

sudo ln -s /usr/lib/libdl.so.2 /usr/lib/libdl.so
