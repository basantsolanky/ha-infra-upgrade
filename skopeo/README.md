# Skopeo Syncing

This directory is responsible for syncing docker images from registy to registry

## Getting Started

The configuration file `config.yaml` is responsible for which images to sync. 


## Syncing from the internet to a directory
To take images that are upstream, and copy them to a directory using the following command
```
skopeo sync  --src yaml --dest dir config.yaml ./repo
```

This will create a directory called ./repo which contains the images.

## Syncing from the directory to the registry
```
skopeo sync --dest-tls-verify=false --src dir --dest docker ./repo/ vm-cb:5000
```
