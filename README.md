[![VScodespaces](https://img.shields.io/endpoint?url=https%3A%2F%2Faka.ms%2Fvso-badge)](https://online.visualstudio.com/environments/new?name=terraform-azurerm-caf-virtual-network&repo=aztfmod/terraform-azurerm-caf-virtual-network)

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

<!--- BEGIN_TF_DOCS --->
<!--- END_TF_DOCS --->