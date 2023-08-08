resource "azurerm_network_interface" "nic" {
  name                = "nic-1"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "my-nic-config"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                            = "vm-1"
  location                        = var.location
  resource_group_name             = var.resource_group_name
  size                            = var.vm_size
  disable_password_authentication = false
  network_interface_ids           = [azurerm_network_interface.nic.id]

  os_disk {
    name                 = "my-osdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.os_image_publisher
    offer     = var.os_image_offer
    sku       = var.os_image_sku
    version   = var.os_image_version
  }

  admin_username = var.admin_username
  admin_password = var.admin_password
  tags           = var.vm_tags
  custom_data = base64encode(<<-EOF
    package_upgrade: true
    packages:
      - nginx
    runcmd:
      - systemctl enable nginx
      - systemctl start nginx
    EOF
  )
}
