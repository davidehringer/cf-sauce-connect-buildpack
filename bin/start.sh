#!/bin/bash

touch $HOME/logs/sc.log
(tail -f -n 0 $HOME/logs/sc.log &)

echo "Launching Sauce Connect tunnel"
bin/sc --user $SAUCE_USER --api-key $SAUCE_API_KEY --proxy www-proxy.lmig.com:80 --proxy-tunnel --se-port $PORT -z 60 --logfile $HOME/logs/sc.log >> $HOME/logs/sc.log 2>&1 &

echo "Tunnel launched on port $PORT"
echo "Waiting for tunnel to bind to port..."