resource_group = {
  rgone = {
    name       = "dilip"
    location   = "centralindia"
    managed_by = "dilip_ki_rg"
  }
  rgtwo = {
    name       = "vikas"
    location   = "eastus"
    managed_by = "vikas_ki_rg"
  }
}

virtual_network = {
  vnet1 = {
    resource_group_name = "dilip"
    location            = "centralindia"
    address_space       = ["100.0.0.0/16"]
    name                = "vnet-dilip"
  }
}

subnet = {
  subnet1 = {
    name                = "subnetdilip"
    virtual_group_name  = "vnet-dilip"
    resource_group_name = "dilip"
    address_prefixes    = ["100.0.1.0/24"]
  }
}
