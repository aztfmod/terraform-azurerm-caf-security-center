[![Build status](https://dev.azure.com/azure-terraform/Blueprints/_apis/build/status/modules/azure_security_center)](https://dev.azure.com/azure-terraform/Blueprints/_build/latest?definitionId=2)
# Configures Azure Security Center


Reference the module to a specific version (recommended):
```hcl
module "azure_security_center" {
    source  = "aztfmod/caf-security-center/azurerm"
    version = "0.x.y"

    contact_email           = "${var.prefix}"
    contact_phone           = "${var.resource_groups}"
    scope_id                = "${var.scope_id}"
    workspace_id            = "${var.workspace_id}"
}
```

# Parameters

## contact_email
(Required) Email address of the email alerts recipient.
```hcl
variable "contact_email" {
  description = "(Required) Email address of the email alerts recipient. "
}

```
Example
```hcl
    contact_email   = "email@email.com" 
```

## contact_phone
(Required) Phone number of the alerts recipient.
```hcl
variable "contact_phone" {
  description = "(Required) Phone number of the alerts recipient."
}
```
Example
```hcl
    contact_phone   = "9293829328"
```

## scope_id
(Required) The scope at which the ASC will be tied, typically a subscription: /subscriptions/00000000-0000-0000-0000-000000000000
```hcl
variable "scope_id" {
  description = "(Required) The scope at which the ASC will be tied, typically a subscription: /subscriptions/00000000-0000-0000-0000-000000000000"
}
```
Example
```hcl
scope_id = "/subscriptions/00000000-0000-0000-0000-000000000000"
```

## workspace_id
(Required) Azure Log Analytics workspace ID that will be used.
```hcl
variable "workspace_id" {
  description = "(Required) Azure Log Analytics workspace ID that will be used."
}
```
Example
```hcl
workspace_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/operations-rg/providers/microsoft.operationalinsights/workspaces/myloganalytics"
```

## enable_security_center
(Optional) Switch to determine if ASC is deployed. Defaulted to true.
```hcl 
variable "enable_security_center" {
  description = "(Optional) Switch to determine if ASC is deployed."
  default = true
}
```
Example
```hcl
enable_security_center = false
```

# Outputs

| Name | Type | Description | 
| -- | -- | -- | 
| object | object | Returns the full ASC object created |
| id | string | Returns the ID of the ASC environment created |