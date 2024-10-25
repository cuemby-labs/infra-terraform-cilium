#
# Install Cert-Manager using Helm
#

resource "helm_release" "cilium" {
  name       = "cilium"
  repository = "https://helm.cilium.io/"
  chart      = "cilium"
  namespace  = "kube-system"
  version    = var.helm_release_version

  set {
    name  = "ipam.mode"
    value = "kubernetes"
  }

  set {
    name  = "cluster.id"
    value = var.cluster_id
  }

  set {
    name  = "cluster.name"
    value = var.cluster_name
  }

  set {
    name  = "kubeProxyReplacement"
    value = var.kube_proxy_replacement
  }

  set {
    name  = "ipam.operator.clusterPoolIPv4PodCIDRList"
    value = var.ipv4_pod_cidrlist
  }

  set {
    name  = "ipv4NativeRoutingCIDR"
    value = var.ipv4_native_routing_cidr
  }

  set {
    name  = "hubble.relay.enabled"
    value = var.hubble_enabled
  }

  set {
    name  = "hubble.ui.enabled"
    value = var.cluster_ui_enabled
  }
  set {
    name  = "clustermesh.maxConnectedClusters"
    value = var.clustermesh_max
  }

}

#
# Walrus information
#

locals {
  context = var.context
}