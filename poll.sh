#!/bin/bash

url=$1
if [[ -z "$url" ]]
then
    url=`minikube service quarkus-sync-demo --url`/hello
fi

while true
do 
curl $url
echo " "
sleep 5
done