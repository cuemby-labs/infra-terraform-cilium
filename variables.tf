#
# Cilium Variables
#

variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  type        = string
}

variable "cluster_ui_enabled" {
  description = "Enable or disable hubble UI"
  type        = bool
  default     = true
}

variable "cluster_id" {
  description = "ID of the Kubernetes cluster, must be different for ClusterMesh"
  type        = number
  default     = 1
}

variable "helm_release_version" {
  description = "Version of the Cilium chart"
  type        = string
  default     = "1.16.2"
}

variable "hubble_enabled" {
  description = "Enable or disable Hubble relay and UI"
  type        = bool
  default     = true
}

variable "kube_proxy_replacement" {
  description = "Enable or disable KubeProxyReplacement."
  type        = bool
  default     = true
}

variable "ipv4_pod_cidrlist" {
  description = "Cluster Pool IPv4 CIDR list"
  type        = string
  default     = "10.0.0.0/16"
}

variable "ipv4_native_routing_cidr" {
  description = "IPv4 native routing CIDR"
  type        = string
  default     = "10.0.0.0/8"
}

variable "clustermesh_max" {
  description = "Cluster Mesh max cluster connected"
  type        = string
  default     = "511"
}

#
# Contextual Fields
#

variable "context" {
  description = <<-EOF
Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.

Examples:
```
context:
  project:
    name: string
    id: string
  environment:
    name: string
    id: string
  resource:
    name: string
    id: string
```
EOF
  type        = map(any)
  default     = {}
}
