# Check if Chocolatey is installed
$chocolateyInstalled = Get-Command choco -ErrorAction SilentlyContinue

if ($chocolateyInstalled -eq $null) {
    Write-Host "Chocolatey is not installed. Installing Chocolatey..."
    # Install Chocolatey
    Set-ExecutionPolicy Bypass -Scope Process -Force
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
} else {
    Write-Host "Chocolatey is already installed."
}

# Check if Git is installed
$gitInstalled = Get-Command git -ErrorAction SilentlyContinue

if ($gitInstalled -eq $null) {
    Write-Host "Git is not installed. Installing Git..."
    # Install Git using Chocolatey
    choco install git -y
} else {
    Write-Host "Git is already installed."
}

# Check if Azure CLI is installed
$azInstalled = Get-Command az -ErrorAction SilentlyContinue

if ($azInstalled -eq $null) {
    Write-Host "Azure CLI is not installed. Installing Azure CLI..."
    # Install Azure CLI using Chocolatey
    choco install azure-cli -y
} else {
    Write-Host "Azure CLI is already installed."
}
