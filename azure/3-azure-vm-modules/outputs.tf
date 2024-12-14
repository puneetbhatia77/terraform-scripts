output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.rg.name
}

output "virtual_machine_name" {
  description = "Name of the virtual machine"
  value       = azurerm_virtual_machine.example.name
}

output "virtual_machine_id" {
  description = "ID of the virtual machine"
  value       = azurerm_virtual_machine.example.id
}
