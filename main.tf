module "azure_resource_group" {
  source      = "./module/azure_resource_group"
  rg_name     = var.rg_name
  rg_location = var.rg_location
}

module "azurerm_virtual_network" {
  depends_on          = [module.azure_resource_group]
  source              = "./module/azure_vnet"
  vnet_name = var.vnet_name
  vnet_location            = var.vnet_location
  rg_name =  = var.rg_name
}
