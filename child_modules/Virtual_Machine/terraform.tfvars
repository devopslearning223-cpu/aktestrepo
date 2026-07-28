vms = {
  "vm_1" = {
    nic_name                = "VM1-nic"
    nic_pip_name             = "pip1"
    vm_name                = "VM1"
  vm_resource_group_name = "rg1"
  vm_location            = "East US"
  vm_size                = "Standard_D4_v5"
  admin_username      = "adminuser"
  admin_password      = "P@ssword1234!"
  vnet_name = "vnet1"
  subnet_name = "subnet1"
  publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"


  
  }
  "vm_2" = {
     nic_name                = "VM2-nic"
    nic_pip_name             = "pip2"
    vm_name                = "VM2"
    vm_resource_group_name = "rg1"
  vm_location            = "East US"
  vm_size                = "Standard_D4_v5"
  admin_username      = "adminuser"
  admin_password      = "P@ssword1234!"
  vnet_name = "vnet1"
  subnet_name = "subnet2"
 publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}



