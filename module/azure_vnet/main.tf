resource "azurerm_virtual_network" "example" {
  name                = var.vnet_name
  location            = var.vnet_location
  resource_group_name = var.resource_group
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

}
