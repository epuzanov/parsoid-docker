#!/bin/bash

set -e

if [ ! -e /data/config.yaml ]; then
	cp config.example.yaml /data/config.yaml
fi

if [ ! -e /data/localsettings.js ]; then
	cp localsettings.example.js /data/localsettings.js
fi

exec "$@"
