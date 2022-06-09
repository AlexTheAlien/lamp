#!/usr/bin/bash

# remove old resources
az resource delete --resource-group 'rg-dev-lamp' --name 'vm-dev-apache01' --resource-type 'Microsoft.Compute/virtualMachines'

# setup new vm
az deployment group create --resource-group rg-dev-lamp --template-file test-vm.bicep