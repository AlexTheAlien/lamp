# remove old resources
az vm deallocate --resource-group 'rg-dev-lamp' --name 'vm-dev-apache01' --verbose
az resource delete --resource-group 'rg-dev-lamp' --name 'vm-dev-apache01' --resource-type 'Microsoft.Compute/virtualMachines' --verbose
az resource delete --resource-group 'rg-dev-lamp' --name 'disk-dev-apache01' --resource-type 'Microsoft.Compute/disks' --verbose
az resource delete --resource-group 'rg-dev-lamp' --name 'nic-vm-dev-apache01' --resource-type 'Microsoft.Network/networkInterfaces' --verbose
az resource delete --resource-group 'rg-dev-lamp' --name 'pip-vm-dev-apache01' --resource-type 'Microsoft.Network/publicIPAddresses' --verbose

# setup new vm
az deployment group create --resource-group rg-dev-lamp --template-file test-vm.bicep