resource "azurerm_virtual_network" "vnet_one" {
  for_each            = var.v-net

  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  address_space       = each.value.address_space
  name                = each.value.name

}

