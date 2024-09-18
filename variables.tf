#
# Cilium Variables
#

variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  type        = string
}

variable "cluster_mesh_enabled" {
  description = "Enable or disable cluster mesh"
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
  default     = "1.16.1"
}

variable "hubble_enabled" {
  description = "Enable or disable Hubble relay and UI"
  type        = bool
  default     = true
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
