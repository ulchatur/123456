param (
    [string]$LogFilePath
)

$ErrorActionPreference = "Stop"

. "$PSScriptRoot/common-logging.ps1"

Write-StructuredLog "Script2 started"
Write-StructuredLog "Performing sample calculation"

$test = 10 / 0

Write-StructuredLog "Result: $test"
Write-StructuredLog "Script2 completed successfully"