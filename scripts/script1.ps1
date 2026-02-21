param (
    [string]$LogFilePath
)

$ErrorActionPreference = "Stop"

. "$PSScriptRoot/common-logging.ps1"

Write-StructuredLog "Script1 started"
Write-StructuredLog "Calling example API"

$response = Invoke-WebRequest -Uri "https://example.com" -UseBasicParsing
$response

Write-StructuredLog "Script1 completed successfully"