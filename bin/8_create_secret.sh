#!/bin/sh
kubectl --namespace argocd \
    create secret generic git-creds \
    --from-literal=username=$GITHUB_USER \
    --from-literal=password=$GITHUB_TOKEN
