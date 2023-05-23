
$scriptUrl = "https://raw.githubusercontent.com/AgioStephen/AGIOASSESSOR/main/AgioAssessment.ps1"
$scriptPath = "$env:TEMP\AgioAssessment.ps1"
Invoke-WebRequest -Uri $scriptUrl -OutFile $scriptPath
Write-Host "Executing AgioAssessment.ps1..."
Start-Process powershell.exe -ArgumentList "-ExecutionPolicy Bypass -File `"$scriptPath`"" -Wait
Remove-Item -Path $scriptPath
