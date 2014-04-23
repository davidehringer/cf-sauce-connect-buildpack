#!/bin/bash

touch $HOME/logs/sc.log
(tail -f -n 0 $HOME/logs/sc.log &)

bin/sc --user ETSLF --api-key 633246bc-bb5f-4986-a68c-4c6b7bcc4551 --proxy www-proxy.lmig.com:80 --proxy-tunnel --se-port $PORT --verbose --logfile $HOME/logs/sc.log >> $HOME/logs/sc.log 2>&1 &

echo "Kicked off sc..." 
echo "port: $PORT"

env