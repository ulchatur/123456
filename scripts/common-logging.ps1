function Initialize-Logger {
    param (
        [string]$LogFilePath
    )

    $Global:StructuredLogFile = $LogFilePath
}

function Write-StructuredLog {
    param (
        [string]$Message,
        [string]$Level = "INFO"
    )

    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $line = "$timestamp [$Level] $Message"

    # Console me bhi dikhe
    Write-Host $line

    # Structured log (same file me add hoga, but workflow mirror bhi karega)
    Add-Content -Path $Global:StructuredLogFile -Value $line
}