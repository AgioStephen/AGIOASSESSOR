
# Define the URL of the script
$scriptUrl = "https://raw.githubusercontent.com/AgioStephen/AGIOASSESSOR/main/AgioAssessment.ps1"

# Define the destination path for the downloaded script
$scriptPath = "$env:TEMP\AgioAssessment.ps1"

# Download the script
Invoke-WebRequest -Uri $scriptUrl -OutFile $scriptPath

# Execute the downloaded script
Write-Host "Executing AgioAssessment.ps1..."
Start-Process powershell.exe -ArgumentList "-ExecutionPolicy Bypass -File `"$scriptPath`"" -Wait

# Clean up the downloaded script
Remove-Item -Path $scriptPath
