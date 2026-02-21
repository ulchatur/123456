param (
    [string]$LogFilePath
)

$ErrorActionPreference = "Stop"

. "$PSScriptRoot/common-logging.ps1"

Write-StructuredLog "Script1 started"
Write-StructuredLog "Calling example API"

$response = Invoke-WebRequest -Uri "https://example.com" -UseBasicParsing

# Out-String ensures full object output is written to log (not truncated like default rendering)
$response | Format-List * | Out-String | Write-Host

Write-StructuredLog "Script1 completed successfully"