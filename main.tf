#
# Install Cert-Manager using Helm
#

resource "helm_release" "cilium" {
  name       = "cilium"
  chart      = "cilium/cilium"
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
    value = "false"
  }

  set {
    name  = "securityContext.capabilities.ciliumAgent"
    value = "{CHOWN,KILL,NET_ADMIN,NET_RAW,IPC_LOCK,SYS_ADMIN,SYS_RESOURCE,DAC_OVERRIDE,FOWNER,SETGID,SETUID}"
  }

  set {
    name  = "securityContext.capabilities.cleanCiliumState"
    value = "{NET_ADMIN,SYS_ADMIN,SYS_RESOURCE}"
  }

  set {
    name  = "cgroup.autoMount.enabled"
    value = "false"
  }

  set {
    name  = "cgroup.hostRoot"
    value = "/sys/fs/cgroup"
  }

  set {
    name  = "hubble.relay.enabled"
    value = tostring(var.hubble_enabled)
  }

  set {
    name  = "global.clusterName"
    value = var.cluster_name
  }

  set {
    name  = "global.clusterMesh.enabled"
    value = tostring(var.cluster_mesh_enabled)
  }

  set {
    name  = "global.etcd.enabled"
    value = "true"
  }

  set {
    name  = "global.serviceType"
    value = "LoadBalancer"
  }

  set {
    name  = "hubble.ui.enabled"
    value = tostring(var.hubble_enabled)
  }

  set {
    name  = "bpf.masquerade"
    value = "true"
  }

  set {
    name  = "nodePort.enabled"
    value = "true"
  }
}

#
# Walrus information
#

locals {
  context = var.context
}