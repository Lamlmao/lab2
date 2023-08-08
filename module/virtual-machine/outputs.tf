output "vm_id" {
  description = "ID of the created VM"
  value       = azurerm_linux_virtual_machine.vm.id
}

output "vm_private_ip" {
  description = "Private IP address of the VM"
  value       = azurerm_linux_virtual_machine.vm.private_ip_address
}
