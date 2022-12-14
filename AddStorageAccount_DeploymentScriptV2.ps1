$DeploymentScriptOutputs = @{};
$DeploymentScriptOutputs['text1'] = 'output1text';

$DeploymentScriptOutputs['UserName'] = ${Env:UserName};
$DeploymentScriptOutputs['StorageName'] = ${Env:StorageName};
$DeploymentScriptOutputs['StorageName2'] = ${Env:StorageName2};

$azCtx = Get-AzContext
$azCtx

$subId = $azCtx.Subscription.Id

Write-Host $subId

$DeploymentScriptOutputs['subId'] = $subId;

Select-AzSubscription -Subscription $subId

$abc = New-AzStorageAccount -ResourceGroupName ${Env:UserName} -Name ${Env:StorageName} -Location westus -SkuName Standard_GRS;
$DeploymentScriptOutputs['storageAccountDetail'] = $abc;
