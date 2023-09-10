provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "../"
    # Resources/Service Enable or Disable 
    rg_enable                                = local.rg_enable
    # Parameter Definition for the Azure Network Foundation components
    resource_group_name                      = lower(local.resource_group_name)
    region                                   = local.location
}
