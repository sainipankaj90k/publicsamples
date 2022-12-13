$DeploymentScriptOutputs = @{};
$DeploymentScriptOutputs['text1'] = 'output1text';

$abc = New-AzStorageAccount -ResourceGroupName ${Env:UserName} -Name ${Env:StorageName} -Location westus -SkuName Standard_GRS;
$DeploymentScriptOutputs['text2'] = $abc;

