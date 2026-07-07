module "resource_group" {
  source = "../../Child_module/azurerm_resource_group"
  rgs    = var.rgs
}

module "vnet" {
  depends_on = [module.resource_group]
  source     = "../../Child_module/azurerm_vnet"
  vnet       = var.vnet
}
module "subnet" {
  depends_on = [module.resource_group, module.vnet]
  source     = "../../Child_module/azurerm_subnet"
  subnet     = var.subnet
}
