
# Define the function to import the module and run the import-scuba command
function invoke-scuba-gear {
    Import-Module -Name .\PowerShell\ScubaGear
    import-scuba
}


invoke-scuba-gear

# Contents of invoke-scuba-wrapper.ps1
invoke-scuba
