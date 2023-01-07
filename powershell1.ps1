$res = Get-AzResource -ResourceType Microsoft.Resources/deploymentScripts

$resourceIds = $res | Select-Object ResourceId | ConvertTo-Json

Write-Host $resourceIds

$DeploymentScriptOutputs = @{};
$DeploymentScriptOutputs['deploymentScriptsIds'] = $resourceIds;

$res2 = Get-AzResource -ResourceType Microsoft.ManagedIdentity/userAssignedIdentities

$resourceIds = $res2 | Select-Object ResourceId | ConvertTo-Json

Write-Host $resourceIds

$DeploymentScriptOutputs['deploymentScriptsIds2'] = $resourceIds;
