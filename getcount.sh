#!/bin/bash

mkdir -p ~/.config/hydroxide
echo \{\"$USER\":\"$AUTH\"\} > ~/.config/hydroxide/auth.json

hydroxide server &> /dev/null &
sleep 2
unread-count -u mizzunet -p $HYDROXIDE_BRIDGE_PASS -S 127.0.0.1 -P 1143