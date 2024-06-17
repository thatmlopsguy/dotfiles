#! /usr/bin/env bash

helm repo add paralus https://paralus.github.io/helm-charts
helm repo add nats https://nats-io.github.io/k8s/helm/charts
helm repo add external-secrets https://charts.external-secrets.io
helm repo add grafana https://grafana.github.io/helm-charts
helm repo add argo https://argoproj.github.io/argo-helm
helm repo add kyverno https://kyverno.github.io/kyverno/
helm repo add jetstack https://charts.jetstack.io
helm repo add stakater https://stakater.github.io/stakater-charts
helm repo add devtron https://helm.devtron.ai
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts
helm repo add k8s-at-home https://k8s-at-home.com/charts
helm repo add otomi https://otomi.io/otomi-core
helm repo add katafygio https://bpineau.github.io/katafygio
helm repo add dragonfly https://dragonflyoss.github.io/helm-charts

helm repo update
helm repo list

helm plugin install https://github.com/komodorio/helm-dashboard.git
helm plugin update dashboard
