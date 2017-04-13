##########################
####  Resource Providers
#####   Microsoft.Compute 
#####   Microsoft.Storage
#####   Microsoft.Network

##### Listing Actions
#####  Get-AzureRmRoleDefinition <role name>
###### (get-azureRmRoledefinition "Virtual Machine Contributor" ).Actions
##### Assigning Roles at the Resource Level 
#####  New-AzureRmRoleAssignment -ObjectId <object id> -RoleDefinitionName <role name in quotes> -ResourceName <resource name> -ResourceType <resource type> -ParentResource <parent resource> -ResourceGroupName <resource group name>
########




$role = get-azureRmRoleDefinition "Virtual Machine contributor"
$role.id = $null
$role.Name = "Virtual Machine Operator"
$role.Description = "Can monitor and restart machines"
$role.Actions.Clear()
$role.Actions.Add("Microsoft.Storage/*/read")
$role.Actions.Add("Microsoft.Network/*read/")
$role.Actions.Add("Microsoft.Authorization/*/read")
$role.Actions.Add("Microsoft.Compute/availabilitySets/*")
$role.Actions.Add("Microsoft.Compute/locations/*")
$role.Actions.Add("Microsoft.Compute/virtualMachines/*")
$role.Actions.Add("Microsoft.Compute/virtualMachineScaleSets/*")
$role.Actions.Add("Microsoft.Insights/alertRules/*")
$role.Actions.Add("Microsoft.Network/applicationGateways/backendAddressPools/join/action")
$role.Actions.Add("Microsoft.Network/loadBalancers/backendAddressPools/join/action")
$role.Actions.Add("Microsoft.Network/loadBalancers/inboundNatPools/join/action")
$role.Actions.Add("Microsoft.Network/loadBalancers/inboundNatRules/join/action")
$role.Actions.Add("Microsoft.Network/loadBalancers/read")
$role.Actions.Add("Microsoft.Network/locations/*")
$role.Actions.Add("(Microsoft.Network/networkInterfaces/*")
$role.Actions.Add("Microsoft.Network/networkSecurityGroups/join/action")
$role.Actions.Add("Microsoft.Network/networkSecurityGroups/read")
$role.Actions.Add("Microsoft.Network/publicIPAddresses/join/action")
$role.Actions.Add("Microsoft.Network/publicIPAddresses/read")
$role.Actions.Add("Microsoft.Network/virtualNetworks/read")
$role.Actions.Add("Microsoft.Network/virtualNetworks/subnets/join/action")
$role.Actions.Add("Microsoft.ResourceHealth/availabilityStatuses/read")
$role.Actions.Add("Microsoft.Resources/deployments/*")
$role.Actions.Add("Microsoft.Resources/subscriptions/resourceGroups/read")
$role.Actions.Add("Microsoft.Storage/storageAccounts/listKeys/action")
$role.Actions.Add("Microsoft.Storage/storageAccounts/read")
$role.Actions.Add("Microsoft.Support/*")
$role.AssignableScopes.Clear()
$role.AssignableScopes.Add("")
New-AzureRmRoleDefinition -Role $role
