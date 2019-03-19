#!/bin/bash

set -e

minikube profile quarkus-sync-demo

minikube -p quarkus-sync-demo delete

minikube start -p quarkus-sync-demo --memory=4096 --cpus=2 

# install ksync if not present locally 

[[ -z `command -v /usr/local/bin/ksync` ]] && curl https://vapor-ware.github.io/gimme-that/gimme.sh | bash

# ininitalize ksync
ksync init 

# configure bash to use minikube
eval $(minikube docker-env)
