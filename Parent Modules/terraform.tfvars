resource_groups = {
  "rg2" = {
    name     = "rg2"
    location = "centralIndia"
  }
}

virtual_networks = {
  "vnet2" = {
    name                = "vnet2"
    address_space       = ["10.1.0.0/16"]
    location            = "centralIndia"
    resource_group_name = "rg2"
  }
}

subnets = {
  "snet1" = {
    name                 = "snet1"
    resource_group_name  = "rg2"
    address_prefixes     = ["10.1.2.0/24"]
  }
}

vms = {
  "vm1" = {
    vm_name            = "vm1"
    resource_group_name = "rg2"
    location            = "centralIndia"
    vm_size             = "Standard_B4as_v2"
    nic_name            = "nic1"
  }
}

keyvaults = {
  "kv1" = {
    kv_name             = "kvdocker"
    location            = "centralIndia"
    resource_group_name = "rg2"
  }
}

secrets = {
  "secret1" = {
    name  = "username"
    value = "Kulvinder12"
  }
  "secret2" = {
    name  = "password"
    value = "Docker@123"
  }
}

public_ips = {
  "pip1" = {
    name                = "pip1"
    resource_group_name = "rg2"
    location            = "centralIndia"
  }
}