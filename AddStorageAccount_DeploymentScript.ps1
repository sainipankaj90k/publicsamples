$DeploymentScriptOutputs = @{};
$DeploymentScriptOutputs['text1'] = 'output1text';

$DeploymentScriptOutputs['UserName'] = ${Env:UserName};
$DeploymentScriptOutputs['StorageName'] = ${Env:StorageName};
$DeploymentScriptOutputs['StorageName2'] = ${Env:StorageName2};

$abc = New-AzStorageAccount -ResourceGroupName ${Env:UserName} -Name ${Env:StorageName} -Location westus -SkuName Standard_GRS;
$DeploymentScriptOutputs['text2'] = $abc;

