resource "azurerm_virtual_network" "testvnet1" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "example" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_virtual_network.testvnet1.resource_group_name
  virtual_network_name = azurerm_virtual_network.testvnet1.name
  address_prefixes     = ["10.0.1.0/24"]
}