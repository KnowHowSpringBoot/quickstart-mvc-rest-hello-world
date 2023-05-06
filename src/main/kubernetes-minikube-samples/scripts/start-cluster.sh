#!/bin/bash

set -e
set -x

. ./set-env.sh

minikube start -p $CLUSTER_NAME --memory='9000mb' --cpus=4 --disk-size=25g --vm-driver="virtualbox" --insecure-registry=localhost:5000
minikube profile $CLUSTER_NAME

minikube addons enable metrics-server
minikube addons enable ingress
minikube addons enable dashboard


eval $(minikube docker-env)

kubectl config use-context $CLUSTER_NAME
minikube -p $CLUSTER_NAME dashboard --url
