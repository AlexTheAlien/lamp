#!/usr/bin/bash

# remove old resources
az resource delete --resource-group 'rg-dev-lamp' --name 'disk-dev-apache01' --resource-type 'Microsoft.Compute/disks'
az resource delete --resource-group 'rg-dev-lamp' --name 'nic-vm-dev-apache01' --resource-type 'Microsoft.Network/networkInterfaces'
az resource delete --resource-group 'rg-dev-lamp' --name 'pip-vm-dev-apache01' --resource-type 'Microsoft.Network/publicIPAddresses'
az resource delete --resource-group 'rg-dev-lamp' --name 'vm-dev-apache01' --resource-type 'Microsoft.Compute/virtualMachines'

# setup new vm
az deployment group create --resource-group rg-dev-lamp --template-file test-vm.bicep