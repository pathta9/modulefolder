module "rg_mod" {
  source  = "../rgf"
  rgf_map = var.rgff_map
}

module "stg_mod" {
  depends_on = [module.rg_mod]
  source     = "../stgf"
  stg_map    = var.stgg_map

}

/* module "vnet_mod" {
  depends_on = [module.rg_mod]
  source     = "../vnetf"
  vnet_map   = var.vnet_mapp

 }

module "subnet_mod" {
  depends_on = [module.rg_mod, module.vnet_mod]
  source     = "../subnetf"
  subnet_map = var.subnet_mapp

}

module "pip_mod" {
  depends_on = [module.rg_mod, ]
  source     = "../pipf"
  pip_map    = var.pip_mapp
}

module "nic_mod" {
  depends_on = [module.rg_mod, module.subnet_mod]
  source     = "../nicf"
  nic_map    = var.nic_mapp
}

module "vm_mod" {
  depends_on = [module.nic_mod,module.kv_mod]
  source     = "../vmf"
  vm_map     = var.vm_mapp

}

module "kv_mod" {
  depends_on   = [module.rg_mod]
  source       = "../ykeyvoltf"
  key_volt_map = var.key_volt_mapp

} */