#!/bin/sh
sleep 10 
sh /entrypoint.sh db createdb
sh /entrypoint.sh db migrate
sh /entrypoint.sh run