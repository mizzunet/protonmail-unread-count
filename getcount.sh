#!/bin/bash

mkdir -p ~/.config/hydroxide
echo $USER $AUTH
echo \{\"$USER\":\"$AUTH\"\} > ~/.config/hydroxide/auth.json
cat ~/.config/hydroxide/auth.json

hydroxide serve &> /dev/null &
ps -e | grep hy
sleep 2
unread-count -u mizzunet -p $HYDROXIDE_BRIDGE_PASS -S 127.0.0.1 -P 1143