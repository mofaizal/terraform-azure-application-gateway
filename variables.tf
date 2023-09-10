# Variable declaration for resource group enable/disable flag
variable "rg_enable" {
    default = 1 
}
# Variable declaration for the name of Resource Group to be created
variable "resource_group_name" {
    description = "The name of resource group"
}
# Variable declaration for the Region of Resource Group to be created
variable "region" {
    description = "The location of resource group"
}


# Variable Declaration for Virtual Network Enable
variable "vnet_enable" {
  default = 1
}

# Variable Declaration for Virtual Network Name
variable "vnet_name" {
  type        = list(string)
}

# Variable Declaration for Virtual Network Address
variable "vnet_address" {

}

variable "subnet_count" {
  description = "The nsg rules for private subnet"
  default = 2
  type = number
}

# Variable declaration for the subnet names
variable subnet_names {
  type=list
}

# Variable declaration for the  Subnet's ranges
variable subnet_range {
  type=list
}

# Variable declaration for the  public  ip sku and allocation method
variable public_ip_allocation_method  {

}


# Variable declaration for the  public  ip sku and allocation method
variable public_ip_sku_tier  {

}

# Variable declaration for the  application gateway sku
variable app_gateway_name_tier  {

}

# Variable declaration for the  application gateway name
variable app_gateway_name  {

} 