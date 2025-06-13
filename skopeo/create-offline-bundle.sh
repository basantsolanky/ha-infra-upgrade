#!/bin/bash
DATE=`date +%Y-%m-%d_%H-%M-%S`
rm -rf repo 2> /dev/null
skopeo sync --remove-signatures  --src yaml --dest dir config.yaml ./repo

tar -cvf kubernetes-images-$DATE.tar ./repo

