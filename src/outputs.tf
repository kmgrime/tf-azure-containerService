output "rg_name" {
  value = azurerm_resource_group.rg.name
}

output "location" {
  value = azurerm_container_group.aci-helloworld.location
}

output "container_name" {
  value = azurerm_container_group.aci-helloworld.name
}

output "os_type" {
  value = azurerm_container_group.aci-helloworld.os_type
}

output "container_ip" {
  value = azurerm_container_group.aci-helloworld.ip_address
}