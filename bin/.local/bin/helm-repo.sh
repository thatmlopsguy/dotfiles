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
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo add autoscaler https://kubernetes.github.io/autoscaler
helm repo add traefik https://traefik.github.io/charts
helm repo add hashicorp https://helm.releases.hashicorp.com
helm repo add jenkins https://charts.jenkins.io
helm repo add elastic https://helm.elastic.co
helm repo add vmware-tanzu https://vmware-tanzu.github.io/helm-charts/
helm repo add apache-airflow https://airflow.apache.org/
helm repo add longhorn https://charts.longhorn.io
helm repo add fluent https://fluent.github.io/helm-charts
helm repo add metallb https://metallb.github.io/metallb
helm repo add istio https://istio-release.storage.googleapis.com/charts
helm repo add bitnami-labs https://bitnami-labs.github.io/sealed-secrets/
helm repo add goauthentik https://charts.goauthentik.io/
helm repo add jaegertracing https://jaegertracing.github.io/helm-charts
helm repo add chartmuseum https://chartmuseum.github.io/charts
helm repo add dex https://charts.dexidp.io
helm repo add crossplane https://charts.crossplane.io/master/
helm repo add renovate https://docs.renovatebot.com/helm-charts
helm repo add falcosecurity https://falcosecurity.github.io/charts
helm repo add kong https://charts.konghq.com
helm repo add fairwinds-stable https://charts.fairwinds.com/stable
helm repo add karpenter https://charts.karpenter.sh/
helm repo add netdata https://netdata.github.io/helmchart
helm repo add rook https://charts.rook.io/release
helm repo add trino https://trinodb.github.io/charts/
helm repo add chaos-mesh https://charts.chaos-mesh.org
helm repo add deliveryhero https://charts.deliveryhero.io/
helm repo add flagger https://flagger.app
helm repo add keel https://charts.keel.sh
helm repo add atlantis https://runatlantis.github.io/helm-charts
helm repo add loft https://charts.loft.sh
helm repo add keptn https://charts.lifecycle.keptn.sh/
helm repo add openfeature https://open-feature.github.io/open-feature-operator/
helm repo add openebs https://openebs.github.io/openebs
helm repo add signoz https://charts.signoz.io
helm repo add dapr https://dapr.github.io/helm-charts/
helm repo add zipkin https://zipkin.io/zipkin-helm

helm repo update
helm repo list

helm plugin install https://github.com/komodorio/helm-dashboard.git
helm plugin update dashboard
