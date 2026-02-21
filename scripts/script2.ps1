param (
    [string]$LogFilePath
)

$ErrorActionPreference = "Stop"

. "$PSScriptRoot/common-logging.ps1"
Initialize-Logger -LogFilePath $LogFilePath

Write-StructuredLog "Script2 started"
Write-StructuredLog "Performing sample calculation"

# Intentional error (raw error console me aayega)
$test = 10 / 0

Write-StructuredLog "Result: $test"
Write-StructuredLog "Script2 completed successfully"