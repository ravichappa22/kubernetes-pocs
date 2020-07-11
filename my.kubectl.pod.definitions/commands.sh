#!/bin/sh
minikube ssh

kubectl create secret docker-registry publicdocker-secret --docker-server=registry.hub.docker.com --docker-username=chapparavi22 --docker-password=rambabu2 --docker-email=chapparavi22@gmail.com

