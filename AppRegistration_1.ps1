$appName = ${Env:AppName};
$appURI = ${Env:AppUri};
$appHomePageUrl = ${Env:AppHomePageUrl};
$appReplyURLs = @($appURI, $appHomePageURL, "https://localhost:1234")
if(!($myApp = Get-AzADApplication -Filter "DisplayName eq '$($appName)'"  -ErrorAction SilentlyContinue))
{
    $myApp = New-AzADApplication -DisplayName $appName -IdentifierUris $appURI -Homepage $appHomePageUrl -ReplyUrls $appReplyURLs    
}


$Guid = New-Guid
$startDate = Get-Date
    
$PasswordCredential = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordCredential
$PasswordCredential.StartDate = $startDate
$PasswordCredential.EndDate = $startDate.AddYears(1)
$PasswordCredential.KeyId = $Guid
$PasswordCredential.Value = ([System.Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes(($Guid))))
