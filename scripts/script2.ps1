param (
    [string]$LogFilePath
)

. "$PSScriptRoot/common-logging.ps1"

Start-Logging -LogFilePath $LogFilePath

Write-Host "Script2 started"
Write-Host "Performing sample calculation"

# Force error
Write-Host "Test calculation result: $(10 / 0)"

Write-Host "Script2 completed successfully"


Stop-Logging