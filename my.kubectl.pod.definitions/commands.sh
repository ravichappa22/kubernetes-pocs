#!/bin/sh
minikube ssh
kubectl config get-contexts
kubectl config set-context --current --namespace=dev
kubectl create secret docker-registry publicdocker-secret --docker-server=registry.hub.docker.com --docker-username=chapparavi22 --docker-password=****** --docker-email=chapparavi22@gmail.com
#to know the exposed service url
minikube service  my-nginx-svc --url -n dev
#to update a replica set where you deploy a new build
kubectl --record deployment.apps/my-nginx set image nginx=nginx:1.16.1
kubectl set image deployment.v1.apps/nginx-deployment nginx=nginx:1.161 --record=true
#to start dashboard http://127.0.0.1:34051/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/#/overview?namespace=default
minikube dashboard
