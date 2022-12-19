$DeploymentScriptOutputs = @{};

$DeploymentScriptOutputs['ResourceGroupName'] = ${Env:ResourceGroupName};
$DeploymentScriptOutputs['StorageName'] = ${Env:StorageName};
$DeploymentScriptOutputs['KeyVaultName'] = ${Env:KeyVaultName};
$DeploymentScriptOutputs['Location'] = ${Env:Location};

$azCtx = Get-AzContext
$azCtx

$subId = $azCtx.Subscription.Id

Write-Host $subId

$DeploymentScriptOutputs['subId'] = $subId;

Select-AzSubscription -Subscription $subId

$storageAccountDetail = New-AzStorageAccount -ResourceGroupName ${Env:ResourceGroupName} -Name ${Env:StorageName} -Location westus -SkuName Standard_GRS;
$DeploymentScriptOutputs['storageAccountDetail'] = $storageAccountDetail;


$keyVaultDetail = New-AzKeyVault -ResourceGroupName ${Env:ResourceGroupName} -Name ${Env:KeyVaultName} -Location westus;
$DeploymentScriptOutputs['keyVaultDetail'] = $keyVaultDetail;

$DeploymentScriptOutputs['ScriptResult'] = 'Succeeded';
