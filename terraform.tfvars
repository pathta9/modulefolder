rgff_map = {

  # rg11 = {
  #   name     = "tp1"
  #   location = "westus"
  # }

  rg22 = {
    name     = "tp2"
    location = "eastus"
  }

  # rg33 = {
  #   name     = "tp3"
  #   location = "westus"
  # }


  # rg44 = {
  #   name     = "tp4"
  #   location = "centralindia"
  # }
}

stgg_map = {

  stg11 = {

    name                     = "stgtp1"
    resource_group_name      = "tp1"
    location                 = "westus"
    account_replication_type = "LRS"

  }

  stg22 = {

    name                     = "stgtp2"
    resource_group_name      = "tp2"
    location                 = "eastus"
    account_replication_type = "LRS"

  }
}

vnet_mapp = {

  # vnet11 = {
  #   name                = "vnettp1"
  #   location            = "westus"
  #   resource_group_name = "tp1"
  #   address_space       = ["10.0.0.0/16"]
  #   dns_servers         = ["10.0.0.4", "10.0.0.5"]
  # }

  vnet22 = {
    name                = "vnettp2"
    location            = "eastus"
    resource_group_name = "tp2"
    address_space       = ["20.0.0.0/16"]
    dns_servers         = ["8.8.8.8", "8.8.4.4"]
  }

  # vnet33 = {
  #   name                = "vnettp3"
  #   location            = "westus"
  #   resource_group_name = "tp3"
  #   address_space       = ["30.0.0.0/16"]
  #   dns_servers         = ["30.0.0.4", "30.0.0.5"]
  # }
}

subnet_mapp = {

  subnet11 = {

    name                 = "subnet1tp2"
    resource_group_name  = "tp2"
    virtual_network_name = "vnettp2"
    address_prefixes     = ["20.0.2.0/26"]

  }

  subnet22 = {

    name                 = "subnet2tp2"
    resource_group_name  = "tp2"
    virtual_network_name = "vnettp2"
    address_prefixes     = ["20.0.1.0/24"]

  }


}

pip_mapp = {



  pip11 = {

    name                = "pip1tp2"
    resource_group_name = "tp2"
    location            = "eastus"
  }

  pip22 = {

    name                = "pip2tp2"
    resource_group_name = "tp2"
    location            = "eastus"
  }
}

nic_mapp = {


  nic22 = {
    name                 = "nic1tp2"
    location             = "eastus"
    resource_group_name  = "tp2"
    subnet_name          = "subnet1tp2"
    public_ip_name       = "pip1tp2"
    virtual_network_name = "vnettp2"
    ip_config_name       = "ipconfig2"

  }

  nic33 = {
    name                 = "nic2tp2"
    location             = "eastus"
    resource_group_name  = "tp2"
    subnet_name          = "subnet2tp2"
    virtual_network_name = "vnettp2"
    ip_config_name       = "ipconfig3"
    public_ip_name       = "pip2tp2"

  }

  # nic44 = {
  #   name                 = "nictp4"
  #   location             = "eastus"
  #   resource_group_name  = "tp2"
  #   subnet_name          = "subnettp2"
  #   virtual_network_name = "vnettp2"
  #   ip_config_name       = "ipconfig4"

  # }
}

vm_mapp = {

  vm22 = {

    vm_name                = "tpvm2"
    resource_group_name = "tp2"
    location            = "eastus"
    nic_name            = "nic1tp2"
    vm_username         = "vmusername2"
    vm_password         = "vmuserpass2"
    kv_name  = "kvtp21007"

  }

  vm22 = {

    vm_name                = "tpvm2"
    resource_group_name = "tp2"
    location            = "eastus"
    nic_name            = "nic1tp2"
    vm_username         = "vmusername2"
    vm_password         = "vmuserpass2"
    kv_name  = "kvtp21007"

  }

  vm33 = {

    vm_name               = "tpvm3"
    resource_group_name = "tp2"
    location            = "eastus"
    nic_name            = "nic2tp2"
    vm_username         = "vmusername3"
    vm_password         = "vmuserpass3"
    kv_name  = "kvtp21007"
  }
}

key_volt_mapp = {
  kv1 = {
    kv_name  = "kvtp21007"
    location = "eastus"
    rg_name  = "tp2"
  }
}