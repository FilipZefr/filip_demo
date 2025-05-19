provider "azurerm" {
  features {}
  subscription_id = "4980b384-c3df-4e2e-b0c9-16ac0d78417c"
}

resource "azurerm_virtual_network" "my_vnet" {
  name                = "Test-Filip-VNet"
  location            = azurerm_resource_group.my_rg.location
  resource_group_name = azurerm_resource_group.my_rg.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_resource_group" "my_rg" {
  name     = "Test-Filip-RG"
  location = "westeurope"
}

resource "azurerm_subnet" "my_subnet" {
  name                 = "Test-Filip-Subnet"
  resource_group_name  = azurerm_resource_group.my_rg.name
  virtual_network_name = azurerm_virtual_network.my_vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

