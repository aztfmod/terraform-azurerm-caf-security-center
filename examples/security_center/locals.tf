locals {
  convention = "random"
  name       = "caftest"
  location   = "southeastasia"
  prefix           = ""
  postfix          = ""
  max_length       = 60
  resource_groups = {
    test = {
      name     = "test-caf"
      location = "southeastasia"
    },
  }
  tags = {
    environment = "DEV"
    owner       = "CAF"
  }
  asc_config = {
    contact_email = "email@email.com"
    contact_phone = "9293829328"
    alert_notifications = true 
    alerts_to_admins = true
  }
}