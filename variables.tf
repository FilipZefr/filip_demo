variable "client_id" {
  description = "Service principal ID used for deployment"
  type        = string
}

variable "client_secret" {
  description = "Service principal secret"
  type        = string
}

variable "tenant_id" {
  description = "Azure tenant ID"
  type        = string
}

variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}
variable "location" {
  description = "Azure location"
  type        = string
  default     = "westeurope"
}

variable "vnet_address_space" {
  description = "Address space for the VNet"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}
