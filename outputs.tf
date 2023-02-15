# OUTPUT

output "vm_id" {
  value = "${azurerm_virtual_machine.windows_vm.id}"
  description = "virtual machine id"
}

output "vm_name" {
  value = "${azurerm_virtual_machine.windows_vm.name}"
  description = "virtual machine name"
}

output "vm_location" {
  value = "${azurerm_virtual_machine.windows_vm.location}"
  description = "virtual machine location"
}

output "vm_resource_group_name" {
  value = "${azurerm_virtual_machine.windows_vm.resource_group_name}"
  description = "virtual machine resource group name"
}
