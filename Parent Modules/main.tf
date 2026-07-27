module "rg" {
    source = "../child modules/resource_group"
    resource_groups = var.resource_groups
}

module "v_net" {
    depends_on = [ module.rg ]
    source = "../child modules/v_net"
    virtual_networks = var.virtual_networks
}

module "s_net" {
    depends_on = [ module.rg, module.v_net ]
    source = "../child modules/sub_net"
    subnets = var.subnets
}

module "keyvault" {
    depends_on = [ module.rg ]
    source = "../child modules/keyvault"
    keyvaults = var.keyvaults
}

module "keyvault_secret" {
    depends_on = [ module.rg, module.keyvault ]
    source = "../child modules/keyvault_secret"
    secrets = var.secrets
}

module "virtual_machine" {
    depends_on = [ module.rg, module.v_net, module.s_net, module.keyvault, module.keyvault_secret ]
    source = "../child modules/virtual_machine"
    vms = var.vms
  
}

module "public_ip" {
    depends_on = [ module.rg ]
    source = "../child modules/public_ip"
    public_ips = var.public_ips
}