

module "application-gateway" {
  source  = "mofaizal/application-gateway/azure"
  version = "1.0.2"
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
    public_ip_allocation_method             = local.public_ip_allocation_method
    public_ip_sku_tier                      = local.public_ip_sku_tier
    app_gateway_name_tier                   = local.app_gateway_name_tier
    app_gateway_name                        = local.app_gateway_name
}

