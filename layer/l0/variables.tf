variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "vnet_address_space" {
  description = "CIDR block for VNet"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefix" {

}

variable "admin_username" {
  description = "Admin Username"
  type        = string
}

variable "admin_password" {
  description = "Admin Password"
  type        = string
}

variable "os_image_version" {
  
}

variable "os_image_offer" {
  
}

variable "os_image_publisher" {
  
}

variable "os_image_sku" {
  
}

variable "vm_tags" {
  
}

variable "vm_size" {
  
}

variable "disk_size_gb" {
  
}

variable "create_option" {
  
}

variable "storage_account_type" {
  
}