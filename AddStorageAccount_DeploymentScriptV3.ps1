$DeploymentScriptOutputs = @{};

$res = Get-AzResource -ResourceType Microsoft.Resources/deploymentScripts

$resourceIds = $res | Select-Object ResourceId | ConvertTo-Json

Write-Host $resourceIds

$DeploymentScriptOutputs = @{};
$DeploymentScriptOutputs['deploymentScriptsIds'] = $resourceIds;

$DeploymentScriptOutputs['ScriptResult'] = 'Succeeded';
