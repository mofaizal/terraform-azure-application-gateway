locals {
 
  # Resource group enable = 0 = no, 1 = yes, if yes, then the resource group will be created otherwise it will use the existing resource group
  rg_enable = 1
  # Resource group name if you want to create a new resource group provide rg_enable = 1 and provide the resource group name below otherwise provide existing resource group name
  resource_group_name     = "app-rg"
  location = "West Europe"


vnet_name                                = ["hub-environment"]
vnet_address                             = ["10.90.0.0/16"]
subnet_names                             = ["frontend","backend"]
subnet_range                             = ["10.90.0.0/24","10.90.1.0/24"]
subnet_count                             = 2
}