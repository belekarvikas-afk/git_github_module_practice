module "resource_group"{
    source = "../module/01_resources_group"
   resource_group = var.resource_group
    
}

module "virtual_network"{
    source = "../module/02_azurerm_virtual_network"
    v-net = var.virtual_network
    depends_on = [ module.resource_group ]
}


module "subnet" {
    source = "../module/03_azurerm_sub_network"
    subnet= var.subnet
    depends_on = [ module.virtual_network ]
}