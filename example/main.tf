

module "application-gateway" {
  source  = "mofaizal/application-gateway/azure"
  version = "1.0.1"
# source = "../"
  # Resources/Service Enable or Disable 
    rg_enable                                = local.rg_enable
    # Parameter Definition for the Azure Network Foundation components
    resource_group_name                      = lower(local.resource_group_name)
    region                                   = local.location
    vnet_enable = 1
    vnet_name = local.vnet_name
    vnet_address = local.vnet_address
    subnet_count                            = local.subnet_count
    subnet_names                            = local.subnet_names
    subnet_range                            = local.subnet_range
}

