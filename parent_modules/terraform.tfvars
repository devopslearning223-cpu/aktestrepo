rgs = {
  rg1 = {
    name     = "rg1"
    location = "East US"
  }
   rg2 = {
    name     = "rg2"
    location = "East US"
  }
   rg3 = {
    name     = "rg3"
    location = "East US"
  }
}
vnets = {
  vnet1 = {
    name                = "vnet1"
    address_space       = ["10.0.0.0/16"]
    location            = "East US"
    resource_group_name = "rg1"
  }
}
subnets = {
  subnet1 = {
    name                 = "subnet1"
    resource_group_name  = "rg1"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "subnet2"
    resource_group_name  = "rg1"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.3.0/24"]
  }

  subnet3 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rg1"
    virtual_network_name = "vnet1"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

public_ips = {
  public_ip_1 = {
    name                = "pip1"
    resource_group_name = "rg1"
    location            = "East US"
    allocation_method   = "Static"
  }
   public_ip_2 = {
    name                = "pip2"
    resource_group_name = "rg1"
    location            = "East US"
    allocation_method   = "Static"
  }
}
vms = {
  vm_1 = {
    nic_name                = "VM1-nic"
    nic_pip_name            = "pip1"
    vm_name                 = "VM1"
    vm_resource_group_name  = "rg1"
    location             = "East US"
    vm_size                 = "Standard_D4_v5"
    admin_username          = "adminuser"
    admin_password          = "P@ssword1234!"
    vnet_name               = "vnet1"
    subnet_name             = "subnet1"
    publisher               = "Canonical"
    offer                   = "0001-com-ubuntu-server-jammy"
    sku                     = "22_04-lts"
    version                 = "latest"

  }
  vm_2 = {
    nic_name                = "VM2-nic"
    nic_pip_name            = "pip2"
    vm_name                 = "VM2"
    vm_resource_group_name  = "rg1"
    location             = "East US"
    vm_size                 = "Standard_D4_v5"
    admin_username          = "adminuser"
    admin_password          = "P@ssword1234!"
    vnet_name               = "vnet1"
    subnet_name             = "subnet2"
    publisher               = "Canonical"
    offer                   = "0001-com-ubuntu-server-jammy"
    sku                     = "22_04-lts"
    version                 = "latest"

  }
}

