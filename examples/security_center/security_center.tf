data "azurerm_client_config" "current" {
}

module "rg_test" {
  source  = "aztfmod/caf-resource-group/azurerm"
  version = "0.1.1"
  
    prefix          = local.prefix
    resource_groups = local.resource_groups
    tags            = local.tags
}

module "la_test" {
  source  = "aztfmod/caf-log-analytics/azurerm"
  version = "0.1.0"
  
    # convention          = local.convention
    location            = local.location
    name                = local.name
    solution_plan_map   = local.solution_plan_map 
    prefix              = local.prefix
    resource_group_name = module.rg_test.names.test
    tags                = local.tags
}

module "asc_test" {
  source = "../../"
  
  enable_security_center  = local.enable_security_center
  contact_email           = local.security_center.contact_email
  contact_phone           = local.security_center.contact_phone
  scope_id                = "/subscriptions/${data.azurerm_client_config.current.subscription_id}"
  workspace_id            = module.la_test.id
}
