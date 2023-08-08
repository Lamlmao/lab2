

module "network" {
  source                = "../../module/network"
  resource_group_name   = var.resource_group_name
  location              = var.location
  vnet_address_space    = var.vnet_address_space
  subnet_address_prefix = var.subnet_address_prefix
}

module "vm" {
  source                          = "../../module/virtual-machine"
  disable_password_authentication = true
  location                        = var.location
  resource_group_name             = var.resource_group_name
  subnet_id                       = module.network.subnet_id
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  vm_size                         = var.vm_size
  vm_tags                         = var.vm_tags
  os_image_publisher              = var.os_image_publisher
  os_image_offer                  = var.os_image_offer
  os_image_sku                    = var.os_image_sku
  os_image_version                = var.os_image_version
  create_option                   = var.create_option
}