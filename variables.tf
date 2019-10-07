variable "contact_email" {
  description = "(Required) Email address of the email alerts recipient. "
}

variable "contact_phone" {
  description = "(Required) Phone number of the alerts recipient."
}

variable "scope_id" {
  description = "(Required) The scope at which the ASC will be tied, typically a subscription: /subscriptions/00000000-0000-0000-0000-000000000000"
}

variable "workspace_id" {
  description = "(Required) Azure Log Analytics workspace ID that will be used."
}