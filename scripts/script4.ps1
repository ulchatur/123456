param (
    [string]$LogFilePath
)

$ErrorActionPreference = "Stop"

. "$PSScriptRoot/common-logging.ps1"

Write-StructuredLog "Script4 started"

Write-StructuredLog "Attempting to read a non-existent config file"
$configPath = "C:\non-existent-folder\config.json"

# This will throw a terminating error because the file does not exist
$configContent = Get-Content -Path $configPath -ErrorAction Stop

Write-StructuredLog "Config loaded: $configContent"
Write-StructuredLog "Script4 completed successfully"