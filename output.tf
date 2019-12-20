output "id" {
  description = "Output the object ID"
  value = azurerm_security_center_workspace.sc[0].id
}

output "object" {
  description = "Output the full object"
  value = azurerm_security_center_workspace.sc
}