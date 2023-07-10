# Make Agio Directory

cd \

mkdir c:\agio

# Directory to change to
$directory = "C:\Agio"

# Set console color
$host.UI.RawUI.ForegroundColor = 'Green'

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

# Change directory to where you want to clone the repository
Set-Location -Path "C:\Agio\"

# Clone the repository
# git clone https://github.com/cisagov/ScubaGear

# Change to the new directory that was created when the repository was cloned
# Set-Location -Path ".\ScubaGear"

# Run the setup script
# .\Setup.ps1

# Define the function to import the module and run the import-scuba command
function invoke-scuba-gear {
    Import-Module -Name .\PowerShell\ScubaGear
    import-scuba
}

# Call the function
# invoke-scuba-gear



# Display ASCII Art
Write-Host @"

WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNdcOWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNx'.:0WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWk,...cxKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWO;.....'lXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWO;........oXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM0:.........'dNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKc...........'dNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXl.............,xWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXo...............,kWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNd'................;OWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNx'..................cKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWk,...................'dWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWO;.....................cKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMW0;......................,OMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM0:.......................'kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKc........................,kMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXl.........................;0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNo'.........................lXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMMNd'.........................,kWMMMW0KWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMMNx'..........................oNMMMWO;cKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMMWk,..........................cKMMMMK:..cXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMMWO;..........................;OWMMMXl....lXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMW0:..........................'xWMMMWx'....'oNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMMK:...........................oXMMMWO,......'dNMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMMKc...........................cKMMMM0:........,xWMMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMMXl...........................;OWMMMXl..........,kWMMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMMNo'..........................'xWMMMNd'...........;OWMMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMMNd'..........................'oNMMMWk,.............:0MMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMMWx'..........................cxKMMMM0:...............cKMMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMMWk,..........................;OWWMMMXl.................lXMMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMMWO;..........................'xWMMMMNd'..................oXMMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMM0:...........................oNMMMMWk,...................'dNMMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMMKc...........................cKMMMMMXc.....................'xNMMMMMMMMMMMMMMMMMMMMM
WMMMMMMMMMMMMMMMKc...........................;OWMMMMMk,......................,kWMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMXl...........................'xWMMMMMWd........................;OWMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMNo'...........................oXMMMMMMNl.........................;OWMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMNd'...........................cKMMMMMMMNo..........................:0MMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMWx,...........................;OWMMMMMMMWd'..........................cKMMMMMMMMMMMMMMMMM
MMMMMMMMMMMWk,...........................'xWMMMMMMMMMO;...........................lXMMMMMMMMMMMMMMMM
MMMMMMMMMMWO;............................oNMMMMMMMMMMNo............................oNMMMMMMMMMMMMMMM
MMMMMMMMMM0:............................lXMMMMMMMMMMMM0:...........................'dNMMMMMMMMMMMMMM
MMMMMMMMMKc...........................'oXMMMMMMMMMMMMMWO:...........................,xWMMMMMMMMMMMMM
MMMMMMMMXl...........................;kNMMMMMMMMMMMMMMMWKc...........................,kWMMMMMMMMMMMM
MMMMMMMXl..........................,oKWMMMMMMMMMMMMMMMMMMNx;..........................;OWMMMMMMMMMMM
MMMMMMNo'........................;oKWMMMMMMMMMMMMMMMMMMMMMWXx;.........................:0WMMMMMMMMMM
MMMMMNd'......................,ckXWMMMMMMMMMMMMMMMMMMMMMMMMMWXOl;'......................:KMMMMMMMMMM
MMMMWx,...................,:okKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWXOdl:,...................cKMMMMMMMMM
MMMWk,...............';ldOKNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWNKOdl;'...............lXMMMMMMMM
MMWO;...........';cdkKNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWNKkdc;'..........'oNMMMMMMM
MM0:.......',cok0XWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWX0xo:,.......'dNMMMMMM
MKc....,:ox0XWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNKOdl;'...,xWMMMMM
Xl,:lxOXNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWNKkoc;;kWMMMM
XOKNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWX00NMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
           _____ _____ ____              _____ _____ ______  _____ _____  ____  _____  
     /\   / ____|_   _/ __ \      /\    / ____/ ____|  ____|/ ____/ ____|/ __ \|  __ \ 
    /  \ | |  __  | || |  | |    /  \  | (___| (___ | |__  | (___| (___ | |  | | |__) |
   / /\ \| | |_ | | || |  | |   / /\ \  \___ \\___ \|  __|  \___ \\___ \| |  | |  _  / 
  / ____ \ |__| |_| || |__| |  / ____ \ ____) |___) | |____ ____) |___) | |__| | | \ \ 
 /_/    \_\_____|_____\____/  /_/    \_\_____/_____/|______|_____/_____/ \____/|_|  \_
 
 Created by Stephen Corrigan and Keith Goddard May 2023
"@

$host.UI.RawUI.ForegroundColor = 'Magenta'

# Display Main Menu


Write-Host "Select the desired option below:"
Write-Host ""
Write-Host "1)  " -NoNewline -ForegroundColor Magenta
Write-Host "Active Directory Domain Services" -ForegroundColor Yellow
Write-Host "2)  " -NoNewline -ForegroundColor Magenta
Write-Host "Azure Infrastructure" -ForegroundColor Yellow
Write-Host "3)  " -NoNewline -ForegroundColor Magenta
Write-Host "General Infrastructure" -ForegroundColor Yellow
Write-Host "4)  " -NoNewline -ForegroundColor Magenta
Write-Host "M365" -ForegroundColor Yellow
Write-Host "5)  " -NoNewline -ForegroundColor Magenta
Write-Host "Vmware" -ForegroundColor Yellow
Write-Host "6)  " -NoNewline -ForegroundColor Magenta
Write-Host "Install Dependencies " -ForegroundColor Yellow
Write-Host ""

# Prompt for user input
$mainMenuItem = Read-Host "Select a category (e.g. 1)"

# Define Submenu
# Define Submenu
$subMenu = @{
    "1" = @{
        "1" = @{ "name"="AD Recon"; "link"="https://github.com/sense-of-security/ADRecon"; "script"="ADRecon.ps1" }

        "2" = @{ "name"="AD X-RAY"; "link"="https://github.com/ClaudioMerola/ADxRay"; "script"="ADxRay.ps1" }
    }
    "2" = @{
        "1" = @{ "name"="Azure ARI"; "link"="https://github.com/microsoft/ARI"; "script"="AzureResourceInventory.ps1" }
    }
    "3" = @{
        "1" = @{ "name"="SMB Discovery"; "link"="https://github.com/gh0x0st/SMB-Data-Discovery"; "script"="Get-RemoteShare.ps1" }
    }
    "4" = @{
        "1" = @{ "name"="Azure AD Recon"; "link"="https://github.com/adrecon/AzureADRecon"; "script"="AzureADRecon.ps1" }
        "2" = @{ "name"="Crowdstrike"; "link"="https://github.com/CrowdStrike/CRT"; "script"="Get-CRTReport.ps1" }
        "3" = @{ "name"="Email Recon"; "link"="https://github.com/dstreefkerk/PowerShell"; "script"="\Infosec-Related\Invoke-EmailRecon.ps1" }
        "4" = @{ "name"="DKIM Check"; "link"="https://github.com/dstreefkerk/PowerShell"; "script"="\Infosec-Related\Invoke-CheckDKIMSelectors.ps1" }
        "5" = @{ "name"="CIS SCUBA Gear Setup"; "link"="https://github.com/cisagov/ScubaGear"; "script"="SetUp.ps1" }
        "6" = @{ "name"="CIS SCUBA Gear RUN"; "link"="https://github.com/AgioStephen/AGIOASSESSOR"; "script"="invoke-scuba.ps1" }
    }
    "5" = @{
        "1" = @{ "name"="RV TOOLS"; "link"="https://github.com/AgioStephen/rvtools"; "script"="RVTools4.3.2.msi" }
    }
    "6" = @{
        "1" = @{ "name"="Dependencies"; "link"="https://github.com/AgioStephen/rvtools"; "script"="dependencies.ps1" }
    }
}


$host.UI.RawUI.ForegroundColor = 'Cyan'

# Display Submenu based on selected category
Write-Host @"
Submenu
Section     Name             Github link
"@
foreach ($item in $subMenu[$mainMenuItem].Keys) {
    Write-Host "$item     $($subMenu[$mainMenuItem][$item]['name'])     $($subMenu[$mainMenuItem][$item]['link'])"
}

$host.UI.RawUI.ForegroundColor = 'White'

# Prompt for user input
$subMenuItem = Read-Host "Select a script to run (e.g. 1.1)"

# Clone the selected repository and run the script
$selectedRepoUrl = $subMenu[$mainMenuItem][$subMenuItem]['link']
$scriptName = $subMenu[$mainMenuItem][$subMenuItem]['script']
$cloneDir = "C:\Agio\$(New-Guid)"
git clone $selectedRepoUrl $cloneDir

& "$cloneDir\$scriptName"

