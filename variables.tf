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
