data "azurerm_client_config" "current" {
}

provider "azurerm" {
  features {}
}

resource "azurecaf_naming_convention" "rg_test" {
  name          = local.resource_groups.test.name
  prefix        = local.prefix != "" ? local.prefix : null
  postfix       = local.postfix != "" ? local.postfix : null
  max_length    = local.max_length != "" ? local.max_length : null
  resource_type = "azurerm_resource_group"
  convention    = local.convention
}

resource "azurerm_resource_group" "rg_test" {
  name     = azurecaf_naming_convention.rg_test.result
  location = local.resource_groups.test.location
  tags     = local.tags
}

module "la_test" {
  source  = "aztfmod/caf-log-analytics/azurerm"
  version = "2.2.0"

  convention          = local.convention
  location            = local.location
  name                = local.name
  prefix              = local.prefix
  resource_group_name = azurerm_resource_group.rg_test.name
  tags                = local.tags
}

module "asc_test" {
  source = "../../"

  asc_config   = local.asc_config
  scope_id     = "/subscriptions/${data.azurerm_client_config.current.subscription_id}"
  workspace_id = module.la_test.id
}
