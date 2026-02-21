function Start-Logging {
    param (
        [string]$LogFilePath
    )

    if (Test-Path $LogFilePath) {
        Remove-Item $LogFilePath -Force
    }

    Start-Transcript -Path $LogFilePath -Append | Out-Null
}

function Stop-Logging {
    Stop-Transcript | Out-Null
}