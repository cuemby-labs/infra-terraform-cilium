# Cilium Template

Terraform module which deploys Cilium on any kubernetes cluster.

## Usage

```hcl
module "cilium" {
  source = "./modules/cert-manager"

  cert_manager_crds_url = "https://github.com/cert-manager/cert-manager/releases/download/v1.15.3/cert-manager.crds.yaml" # URL to the Cert-Manager CRDs YAML file
  namespace_name        = "cert-manager" # Namespace where Cert-Manager will be installed  
  helm_release_name     = "cert-manager" # Name for the Cert-Manager Helm release
  helm_release_version  = "1.15.3" # Version of the Cert-Manager Helm chart
}
```

## Examples

- ...
- ...

## Contributing

Please read our [contributing guide](./docs/CONTRIBUTING.md) if you're interested in contributing to Walrus template.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.7 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.11.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.7 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.11.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.example](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster_name](#input_cluster_name) | Name of the Kubernetes cluster. | `string` | | yes |
| <a name="input_cluster_mesh_enabled"></a> [cluster_mesh_enabled](#input_cluster_mesh_enabled) | Enable or disable cluster mesh. | `bool` | `"true"` | no |
| <a name="input_cluster_id"></a> [cluster_id](#input_cluster_id) | ID of the Kubernetes cluster, must be different for ClusterMesh. | `number` | `"1"` | no |
| <a name="input_hubble_enabled"></a> [hubble_enabled](#input_hubble_enabled) | Enable or disable Hubble relay and UI. | `bool` | `"true"` | no |
| <a name="input_helm_release_version"></a> [helm_release_version](#input_helm_release_version) | Version of the Cilium Helm chart. | `string` | `"1.16.1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_walrus_environment_id"></a> [walrus\_environment\_id](#output\_walrus\_environment\_id) | The id of environment where deployed in Walrus. |
| <a name="output_walrus_environment_name"></a> [walrus\_environment\_name](#output\_walrus\_environment\_name) | The name of environment where deployed in Walrus. |
| <a name="output_walrus_project_id"></a> [walrus\_project\_id](#output\_walrus\_project\_id) | The id of project where deployed in Walrus. |
| <a name="output_walrus_project_name"></a> [walrus\_project\_name](#output\_walrus\_project\_name) | The name of project where deployed in Walrus. |
| <a name="output_walrus_resource_id"></a> [walrus\_resource\_id](#output\_walrus\_resource\_id) | The id of resource where deployed in Walrus. |
| <a name="output_walrus_resource_name"></a> [walrus\_resource\_name](#output\_walrus\_resource\_name) | The name of resource where deployed in Walrus. |
<!-- END_TF_DOCS -->

## License

Copyright (c) 2023 [Seal, Inc.](https://seal.io)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at [LICENSE](./LICENSE) file for details.

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
