param (
    [string]$LogFilePath
)

$ErrorActionPreference = "Stop"

. "$PSScriptRoot/common-logging.ps1"

Write-StructuredLog "Script3 started"

Write-StructuredLog "Getting current system date and time"
$currentDate = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
Write-StructuredLog "Current DateTime: $currentDate"

Write-StructuredLog "Fetching list of running processes (top 5 by CPU)"
$topProcesses = Get-Process | Sort-Object CPU -Descending | Select-Object -First 5
foreach ($proc in $topProcesses) {
    Write-StructuredLog "Process: $($proc.Name) | PID: $($proc.Id) | CPU: $($proc.CPU)"
}

Write-StructuredLog "Calculating disk usage"
$disk = Get-PSDrive -Name C
Write-StructuredLog "C: Drive - Used: $([math]::Round($disk.Used / 1GB, 2)) GB | Free: $([math]::Round($disk.Free / 1GB, 2)) GB"

Write-StructuredLog "Script3 completed successfully"