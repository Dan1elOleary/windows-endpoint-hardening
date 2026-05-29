<#
.SYNOPSIS
    Reviews Microsoft Defender security status.

.DESCRIPTION
    This script checks common Microsoft Defender settings including antivirus status,
    real-time protection, behavior monitoring, cloud protection, and security intelligence updates.

.NOTES
    Author: Daniel O'Leary
    Purpose: Portfolio / Windows Endpoint Security
#>

Write-Host "===== Microsoft Defender Security Check =====" -ForegroundColor Cyan

try {
    $DefenderStatus = Get-MpComputerStatus

    Write-Host "`n--- Defender Status ---" -ForegroundColor Yellow
    Write-Host "Antivirus Enabled: $($DefenderStatus.AntivirusEnabled)"
    Write-Host "Real-Time Protection Enabled: $($DefenderStatus.RealTimeProtectionEnabled)"
    Write-Host "Behavior Monitor Enabled: $($DefenderStatus.BehaviorMonitorEnabled)"
    Write-Host "IOAV Protection Enabled: $($DefenderStatus.IoavProtectionEnabled)"
    Write-Host "Antispyware Enabled: $($DefenderStatus.AntispywareEnabled)"
    Write-Host "Network Inspection System Enabled: $($DefenderStatus.NISEnabled)"
    Write-Host "Defender Service Enabled: $($DefenderStatus.AMServiceEnabled)"
    Write-Host "Security Intelligence Version: $($DefenderStatus.AntivirusSignatureVersion)"
    Write-Host "Last Signature Update: $($DefenderStatus.AntivirusSignatureLastUpdated)"
    Write-Host "Last Quick Scan: $($DefenderStatus.QuickScanEndTime)"
    Write-Host "Last Full Scan: $($DefenderStatus.FullScanEndTime)"

    Write-Host "`n--- Review Findings ---" -ForegroundColor Yellow

    if ($DefenderStatus.AntivirusEnabled -eq $true) {
        Write-Host "Microsoft Defender Antivirus is enabled." -ForegroundColor Green
    }
    else {
        Write-Host "Warning: Microsoft Defender Antivirus is not enabled." -ForegroundColor Red
    }

    if ($DefenderStatus.RealTimeProtectionEnabled -eq $true) {
        Write-Host "Real-time protection is enabled." -ForegroundColor Green
    }
    else {
        Write-Host "Warning: Real-time protection is not enabled." -ForegroundColor Red
    }

    if ($DefenderStatus.BehaviorMonitorEnabled -eq $true) {
        Write-Host "Behavior monitoring is enabled." -ForegroundColor Green
    }
    else {
        Write-Host "Warning: Behavior monitoring is not enabled." -ForegroundColor Yellow
    }

    if ($DefenderStatus.AMServiceEnabled -eq $true) {
        Write-Host "Microsoft Defender service is enabled." -ForegroundColor Green
    }
    else {
        Write-Host "Warning: Microsoft Defender service may not be enabled." -ForegroundColor Red
    }

    Write-Host "`n--- Recommended Review ---" -ForegroundColor Yellow
    Write-Host "- Confirm Defender settings align with company policy."
    Write-Host "- Review recent detections or threat history if needed."
    Write-Host "- Confirm endpoint is reporting to the expected management or security platform."
    Write-Host "- Investigate systems where real-time protection is disabled."
}
catch {
    Write-Host "Unable to retrieve Microsoft Defender status." -ForegroundColor Red
    Write-Host "Try running PowerShell as Administrator." -ForegroundColor Red
    Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host "`n===== Defender Check Complete =====" -ForegroundColor Cyan
