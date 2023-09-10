locals {
 
  # Resource group enable = 0 = no, 1 = yes, if yes, then the resource group will be created otherwise it will use the existing resource group
  rg_enable = 1
  # Resource group name if you want to create a new resource group provide rg_enable = 1 and provide the resource group name below otherwise provide existing resource group name
  resource_group_name     = "app-rg"
  location = "West Europe"

}