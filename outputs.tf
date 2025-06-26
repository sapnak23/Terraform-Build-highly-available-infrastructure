output "public_vm_ip" {
  description = "Public IP of the public VM"
  value       = azurerm_public_ip.vm_public_ip.ip_address
}

output "load_balancer_ip" {
  description = "Public IP of the Load Balancer"
  value       = azurerm_public_ip.lb_public_ip.ip_address
}

output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.rg.name
}

output "virtual_network_name" {
  description = "Name of the Virtual Network"
  value       = azurerm_virtual_network.vnet.name
}
