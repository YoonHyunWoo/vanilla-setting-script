$access_key = Read-Host "Input Youre AWS Access Key "
$secret_key = Read-Host "Input Youre AWS Secret Key "
$region = Read-Host "Input Youre Use AWS Region "

$filePath = "C:\Program Files\Amazon\AWSCLIV2\config.ps1"
$awsPath = "C:\Program Files\Amazon\AWSCLIV2\aws"

New-Item -ItemType File -Path $filePath -Force
Add-Content -Path $filePath -Value "# AWS Account Login"
Add-Content -Path $filePath -Value "& '$awsPath' configure set aws_access_key_id your_access_key"
Add-Content -Path $filePath -Value "& '$awsPath' configure set aws_secret_access_key your_secret_key"
Add-Content -Path $filePath -Value "& '$awsPath' configure set region us-west-2"

(Get-Content $filePath) | Foreach-Object { $_ -replace "your_access_key", "$access_key" } | Out-File $filePath
(Get-Content $filePath) | Foreach-Object { $_ -replace "your_secret_key", "$secret_key" } | Out-File $filePath
(Get-Content $filePath) | Foreach-Object { $_ -replace "us-west-2", "$region" } | Out-File $filePath

& 'C:\Program Files\Amazon\AWSCLIV2\config.ps1'
