output "os_disk_id" {
  description = "ID of the OS disk"
  value       = azurerm_managed_disk.os_disk.id
}
