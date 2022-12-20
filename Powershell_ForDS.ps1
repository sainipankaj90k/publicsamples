$DeploymentScriptOutputs = @{};
$DeploymentScriptOutputs['ResourceGroupName'] = ${Env:ResourceGroupName};
New-AzResourceGroupDeployment -ResourceGroupName $DeploymentScriptOutputs['ResourceGroupName'] -TemplateUri https://raw.githubusercontent.com/sainipankaj90k/publicsamples/main/armTemplateDS.json
