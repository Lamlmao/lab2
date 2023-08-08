resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-1"
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "subnet" {
  name                 = "subnet-1"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_address_prefix
}


# tfvars : 

# network_config : {
#     name = "vnet1" 
#      resource_group_name = "hungvq-rg"
#     address_space = "10.0.0.0/16"
#     subnets = {
#       "subnet1" = {
#         address_prefixes = "10.0.0.0/24" 
#       } 
#       "subnet2" = {
#         address_prefixes = "10.0.1.0/24"
#       }
#     }
# }

