resource "azurerm_security_center_contact" "contact" {
  email = var.asc_config.contact_email
  phone = var.asc_config.contact_phone

  alert_notifications = lookup(var.asc_config, "alert_notifications", true)
  alerts_to_admins    = lookup(var.asc_config, "alerts_to_admins", true)
}

resource "azurerm_security_center_subscription_pricing" "sc" {
  tier = "Standard"
}

resource "azurerm_security_center_workspace" "sc" {
  scope        = var.scope_id
  workspace_id = var.workspace_id

  depends_on = [azurerm_security_center_subscription_pricing.sc]
}

