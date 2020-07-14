variable scope_id {
  description = "(Required) The scope at which the ASC will be tied, typically a subscription: /subscriptions/00000000-0000-0000-0000-000000000000"
}

variable workspace_id {
  description = "(Required) Azure Log Analytics workspace ID that will be used."
}

variable asc_config {
  description = "(Required) Azure Security Center Configuration Object"
  type = object({
    contact_email       = string #(Required) Email address of the email alerts recipient.
    contact_phone       = string #(Required) Phone number of the alerts recipient.
    alert_notifications = bool
    alerts_to_admins    = bool
  })
}
