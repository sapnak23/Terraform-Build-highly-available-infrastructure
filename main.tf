resource "azurerm_resource_group" "rg" {
  name     = "rg-ha-infra"
  location = var.location
}
