#! /usr/bin/env bash
#
# Check
#
# Artifacts - https://artifacthub.io
# Operator - https://operatorhub.io

helm repo add nats https://nats-io.github.io/k8s/helm/charts
helm repo add jetstack https://charts.jetstack.io
helm repo add stakater https://stakater.github.io/stakater-charts
helm repo add k8s-at-home https://k8s-at-home.com/charts
helm repo add katafygio https://bpineau.github.io/katafygio
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add vmware-tanzu https://vmware-tanzu.github.io/helm-charts
helm repo add apache-airflow https://airflow.apache.org
helm repo add bitnami-labs https://bitnami-labs.github.io/sealed-secrets
helm repo add fairwinds-stable https://charts.fairwinds.com/stable
helm repo add trino https://trinodb.github.io/charts
helm repo add deliveryhero https://charts.deliveryhero.io
helm repo add keel https://charts.keel.sh
helm repo add openfeature https://open-feature.github.io/open-feature-operator
helm repo add dapr https://dapr.github.io/helm-charts
helm repo add radius https://radius.azurecr.io/helm/v1/repo
helm repo add openfunction https://openfunction.github.io/charts
helm repo add kedacore https://kedacore.github.io/charts
helm repo add devlake https://apache.github.io/incubator-devlake-helm-chart
helm repo add connaisseur https://sse-secure-systems.github.io/connaisseur/charts
helm repo add flagsmith https://flagsmith.github.io/flagsmith-charts
helm repo add apl https://linode.github.io/apl-core
helm repo add slo-reporting https://colenio.github.io/slo-reporting
helm repo add sloth https://slok.github.io/sloth
helm repo add rlex https://rlex.github.io/helm-charts
helm repo add tika https://apache.jfrog.io/artifactory/tika
helm repo add openfaas https://openfaas.github.io/faas-netes
helm repo add bakito https://charts.bakito.net
helm repo add kanister https://charts.kanister.io
helm repo add kraan https://fidelity.github.io/kraan
helm repo add emberstack https://emberstack.github.io/helm-charts
helm repo add perses https://perses.github.io/helm-charts
helm repo add numaflow https://numaproj.io/helm-charts
helm repo add enix https://charts.enix.io
helm repo add temporal https://go.temporal.io/helm-charts
# Infrastructure
helm repo add hashicorp https://helm.releases.hashicorp.com
helm repo add atlantis https://runatlantis.github.io/helm-charts
helm repo add chartmuseum https://chartmuseum.github.io/charts
helm repo add crossplane-stable https://charts.crossplane.io/stable
helm repo add renovate https://docs.renovatebot.com/helm-charts
helm repo add kubereboot https://kubereboot.github.io/charts
helm repo add cluster-proportional-autoscaler https://kubernetes-sigs.github.io/cluster-proportional-autoscaler
helm repo add loft https://charts.loft.sh
helm repo add capi-operator https://kubernetes-sigs.github.io/cluster-api-operator
helm repo add eraser https://eraser-dev.github.io/eraser/charts
helm repo add descheduler https://kubernetes-sigs.github.io/descheduler
helm repo add karpenter https://charts.karpenter.sh
helm repo add autoscaler https://kubernetes.github.io/autoscaler
# Deployment Lifecycle
helm repo add cdf https://cdfoundation.github.io/tekton-helm-chart
helm repo add argo https://argoproj.github.io/argo-helm
helm repo add flagger https://flagger.app
helm repo add keptn https://charts.lifecycle.keptn.sh
helm repo add jenkins https://charts.jenkins.io
helm repo add projectsveltos https://projectsveltos.github.io/helm-charts
# Auth/Access Management
helm repo add paralus https://paralus.github.io/helm-charts
helm repo add dex https://charts.dexidp.io
helm repo add goauthentik https://charts.goauthentik.io
# Resilience
helm repo add chaos-mesh https://charts.chaos-mesh.org
helm repo add litmuschaos https://litmuschaos.github.io/litmus-helm
# Storage
helm repo add longhorn https://charts.longhorn.io
helm repo add dragonfly https://dragonflyoss.github.io/helm-charts
helm repo add rook https://charts.rook.io/release
helm repo add lakefs https://charts.lakefs.io
helm repo add openebs https://openebs.github.io/openebs
# Policy
helm repo add openfga https://openfga.github.io/helm-charts
helm repo add kyverno https://kyverno.github.io/kyverno
helm repo add gatekeeper https://open-policy-agent.github.io/gatekeeper/charts
helm repo add permitio https://permitio.github.io/opal-helm-chart
# Observability
helm repo add elastic https://helm.elastic.co
helm repo add vector https://helm.vector.dev
helm repo add grafana https://grafana.github.io/helm-charts
helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server
helm repo add jaegertracing https://jaegertracing.github.io/helm-charts
helm repo add zipkin https://zipkin.io/zipkin-helm
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts
helm repo add vm https://victoriametrics.github.io/helm-charts
helm repo add sentry https://sentry-kubernetes.github.io/charts
helm repo add kepler https://sustainable-computing-io.github.io/kepler-helm-chart
helm repo add signoz https://charts.signoz.io
helm repo add fluent https://fluent.github.io/helm-charts
helm repo add splunk-otel-collector-chart https://signalfx.github.io/splunk-otel-collector-chart
helm repo add netdata https://netdata.github.io/helmchart
helm repo add kube-logging https://kube-logging.github.io/helm-charts
# Security
helm repo add external-secrets https://charts.external-secrets.io
helm repo add secrets-store-csi-driver https://kubernetes-sigs.github.io/secrets-store-csi-driver/charts
helm repo add snyk-charts https://snyk.github.io/kubernetes-monitor
helm repo add crowdstrike https://crowdstrike.github.io/falcon-helm
helm repo add falcosecurity https://falcosecurity.github.io/charts
helm repo add aquasecurity https://aquasecurity.github.io/helm-charts
helm repo add qualys-helm-chart https://qualys.github.io/Qualys-Helm-Charts
# Platform
helm repo add devtron https://helm.devtron.ai
helm repo add rig https://charts.rig.dev
helm repo add kusionstack https://kusionstack.github.io/charts
helm repo add kubechecks https://zapier.github.io/kubechecks
helm repo add xm-global-templates https://xmcyber.github.io/helm-global-templates
helm repo add epinio https://epinio.github.io/helm-charts
helm repo add infracloud-charts https://infracloudio.github.io/charts
# Network
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo add cilium https://helm.cilium.io
helm repo add traefik https://traefik.github.io/charts
helm repo add metallb https://metallb.github.io/metallb
helm repo add istio https://istio-release.storage.googleapis.com/charts
helm repo add ngrok https://ngrok.github.io/kubernetes-ingress-controller
helm repo add kube-vip https://kube-vip.github.io/helm-charts
helm repo add projectcalico https://docs.tigera.io/calico/charts
helm repo add kong https://charts.konghq.com
# ML
helm repo add seldonio https://storage.googleapis.com/seldon-charts
helm repo add nvidia https://helm.ngc.nvidia.com/nvidia
helm repo add kuberay https://ray-project.github.io/kuberay-helm
helm repo add weaviate https://weaviate.github.io/weaviate-helm
helm repo add milvus https://milvus-io.github.io/milvus-helm
helm repo add ollama https://otwld.github.io/ollama-helm
helm repo add llamaindex https://run-llama.github.io/helm-charts
helm repo add langchain https://langchain-ai.github.io/helm
helm repo add substratusai https://substratusai.github.io/helm
helm repo add kubeai https://www.kubeai.org
# AWS
helm repo add eks https://aws.github.io/eks-charts
helm repo add localstack-repo https://helm.localstack.cloud
helm repo add aws-secrets-manager https://aws.github.io/secrets-store-csi-driver-provider-aws
helm repo add aws-efs-csi-driver https://kubernetes-sigs.github.io/aws-efs-csi-driver
helm repo add aws-fsx-csi-driver https://kubernetes-sigs.github.io/aws-fsx-csi-driver
helm repo add aws-ebs-csi-driver https://kubernetes-sigs.github.io/aws-ebs-csi-driver
# Azure
helm repo add azurefile-csi-driver https://raw.githubusercontent.com/kubernetes-sigs/azurefile-csi-driver/master/charts
helm repo add blob-csi-driver https://raw.githubusercontent.com/kubernetes-sigs/blob-csi-driver/master/charts
helm repo add azure-workload-identity https://azure.github.io/azure-workload-identity/charts
helm repo add kube-egress-gateway https://raw.githubusercontent.com/Azure/kube-egress-gateway/main/helm/repo

helm repo update
helm repo list

helm plugin install https://github.com/jkroepke/helm-secrets
helm plugin install https://github.com/komodorio/helm-dashboard.git
helm plugin install https://github.com/helm-unittest/helm-unittest.git
helm plugin install https://github.com/jtyr/kubeconform-helm
helm plugin install https://github.com/chartmuseum/helm-push
helm plugin update dashboard

# S3: https://github.com/hypnoglow/helm-s3
# helm plugin install https://github.com/hypnoglow/helm-s3.git;
# GS:https://github.com/hayorov/helm-gcs
# helm plugin install https://github.com/hayorov/helm-gcs.git
# azblob: https://github.com/C123R/helm-blob
# helm plugin install https://github.com/C123R/helm-blob.git

# OCI
# oci://public.ecr.aws/aws-controllers-k8s/ack-chart
