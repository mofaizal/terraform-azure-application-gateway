# Source code for the Resource Group Creation
resource "azurerm_resource_group" "resource_group" {
  count            = var.rg_enable == 1 ? 1 : 0
  name             = var.resource_group_name
  location         = var.region
}

resource "azurerm_virtual_network" "vnet" {
count               =  var.vnet_enable  == 1 ? length(var.vnet_name) : 0
name                = lower("vnet-${var.vnet_name[count.index]}")
address_space        = [element(var.vnet_address, count.index)]  # Use element to get the address space
location            = var.region
resource_group_name = var.resource_group_name

}

resource "azurerm_subnet" "subnet" {
  count                     = var.subnet_count
  name                      = var.subnet_names[count.index] == "GatewaySubnet" ? "GatewaySubnet" : "subnet-${lower(var.subnet_names[count.index])}"
  virtual_network_name   =   azurerm_virtual_network.vnet[0].name
  resource_group_name       = var.resource_group_name
  address_prefixes          = [var.subnet_range[count.index]]

}
