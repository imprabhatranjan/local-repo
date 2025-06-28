module "name" {
  source      = "./module/azure_resource_group"
  rg_name     = var.rg_name
  rg_location = var.rg_location
}
