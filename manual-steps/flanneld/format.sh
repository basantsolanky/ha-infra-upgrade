#!/bin/bash
# Store the repo in the environmental variable $REPO
# This script will change the image repo for us.

sed -re "s/#CHANGEME#/$REPO/g" kube-flannel.yml

