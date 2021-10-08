#!/bin/bash
source ./varfile
az group create --name $rg_name --location $location

az network vnet create --name $vnet_name --address-prefixes $vnet_cidr \
    --resource-group $rg_name --subnet-name $subnet1 --subnet-prefixes $subnet1_cidr

az network vnet subnet create --resource-group $rg_name --name "private" \
    --vnet-name $vnet_name address-prefixes "10.0.0.0/24"

# # az vm create --resource-group $rg_name --name $web_vm_name --image $image \
#     --size $vmSIZE --vnet-name $vnet_name --subnet $subnet1 \ 
#     # --admin-username $username 
