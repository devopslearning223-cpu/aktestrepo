
variable "vms" {}
resource "azurerm_linux_virtual_machine" "VM" {
    for_each = var.vms
  name                = each.value.vm_name
  resource_group_name = each.value.vm_resource_group_name
  location            = each.value.vm_location
  size                = each.value.vm_size
  admin_username      = each.value.admin_username
  admin_password      = each.value.admin_password
  
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_virtual_machine.vms[each.key].id
  ]


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
}
}