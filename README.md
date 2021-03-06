# **READ ME**

Thanks for your interest in Cloud Adoption Framework for Azure landing zones on Terraform.
This module is now deprecated and no longer maintained. 

As part of Cloud Adoption Framework landing zones for Terraform, we have migrated to a single module model, which you can find here: https://github.com/aztfmod/terraform-azurerm-caf and on the Terraform registry: https://registry.terraform.io/modules/aztfmod/caf/azurerm 

In Terraform 0.13 you can now call directly submodules easily with the following syntax:
```hcl
module "caf_firewall" {
  source  = "aztfmod/caf/azurerm//modules/networking/firewall"
  version = "0.4.18"
  # insert the 9 required variables here
}
```

[![VScodespaces](https://img.shields.io/endpoint?url=https%3A%2F%2Faka.ms%2Fvso-badge)](https://online.visualstudio.com/environments/new?name=terraform-azurerm-caf-virtual-network&repo=aztfmod/terraform-azurerm-caf-virtual-network)
[![Gitter](https://badges.gitter.im/aztfmod/community.svg)](https://gitter.im/aztfmod/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

# Configures Azure Security Center


Reference the module to a specific version (recommended):
```hcl
module "azure_security_center" {
    source  = "aztfmod/caf-security-center/azurerm"
    version = "0.x.y"

    asc_config   = var.asc_config
    scope_id     = var.scope_id
    workspace_id = var.workspace_id
}
```

<!--- BEGIN_TF_DOCS --->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| asc\_config | (Required) Azure Security Center Configuration Object | <pre>object({<br>    contact_email       = string #(Required) Email address of the email alerts recipient.<br>    contact_phone       = string #(Required) Phone number of the alerts recipient.<br>    alert_notifications = bool<br>    alerts_to_admins    = bool<br>  })</pre> | n/a | yes |
| scope\_id | (Required) The scope at which the ASC will be tied, typically a subscription: /subscriptions/00000000-0000-0000-0000-000000000000 | `string` | n/a | yes |
| workspace\_id | (Required) Azure Log Analytics workspace ID that will be used. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | Output the object ID |
| object | Output the full object |

<!--- END_TF_DOCS --->
