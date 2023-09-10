locals {
 
  # Resource group enable = 0 = no, 1 = yes, if yes, then the resource group will be created otherwise it will use the existing resource group
  rg_enable = 1
  # Resource group name if you want to create a new resource group provide rg_enable = 1 and provide the resource group name below otherwise provide existing resource group name
  resource_group_name     = "application-rg"
  location = "West Europe"


vnet_name                                = ["hub-environment"]
vnet_address                             = ["10.90.0.0/16"]
subnet_names                             = ["frontend","backend"]
subnet_range                             = ["10.90.0.0/24","10.90.1.0/24"]
subnet_count                             = 2
app_gateway_name_tier                   = "Standard_v2"
app_gateway_name                         = "app-gateway"
public_ip_allocation_method             = local.app_gateway_name_tier == "Standard" ? "Dynamic" : "Static" # Allocation method for the public ip
public_ip_sku_tier                      = local.app_gateway_name_tier == "Standard" ? "Basic" : "Standard" # SKU for the public ip

}