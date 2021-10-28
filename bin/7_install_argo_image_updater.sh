#!/bin/sh

kubectl --namespace argocd apply \
    --filename https://raw.githubusercontent.com/argoproj-labs/argocd-image-updater/stable/manifests/install.yaml

kubectl --namespace argocd logs \
    --selector app.kubernetes.io/name=argocd-image-updater

