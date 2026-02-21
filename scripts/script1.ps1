param (
    [string]$LogFilePath
)

$ErrorActionPreference = "Stop"

. "$PSScriptRoot/common-logging.ps1"
Initialize-Logger -LogFilePath $LogFilePath

Write-StructuredLog "Script1 started"
Write-StructuredLog "Calling example API"

# API call
$response = Invoke-WebRequest -Uri "https://example.com" -UseBasicParsing

# Object explicitly print karo (taaki console dump aaye)
$response

Write-StructuredLog "Script1 completed successfully"