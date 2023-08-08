resource_group_name = "hungvq13-rg"
location = "East US"
vnet_address_space = [ "10.0.0.0/16" ]
subnet_address_prefix = ["10.0.1.0/24"]
admin_username = "lamnh43"
admin_password = "Icho@page2002"
os_image_offer = "UbuntuServer"
os_image_publisher = "Canonical"
os_image_sku = "18.04-LTS"
os_image_version = "latest"
create_option = "FromImage"
disk_size_gb = "30"
storage_account_type = "Premium_LRS"
vm_size = "Standard_DS1_v2"
vm_tags = {
    "env" : "dev" 
}