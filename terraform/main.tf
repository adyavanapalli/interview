resource "azurerm_resource_group" "example" {
  name     = "samplerg"
  location = "Central India"
}

module "vnet" {
    source = ./network
    vnet_name = "sample-vnet"
    location = azurerm_resource_group.example.location
    rg_name = azurerm_resource_group.example.name
}