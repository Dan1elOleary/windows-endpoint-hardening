<#
.SYNOPSIS
    Checks Windows Firewall profile status.

.DESCRIPTION
    This script reviews the Domain, Private, and Public Windows Firewall profiles.
    It reports whether each profile is enabled and displays enabled inbound firewall rules.

.NOTES
    Author: Daniel O'Leary
    Purpose: Portfolio / Windows Firewall Security Check
#>

Write-Host "===== Windows Firewall Status Check =====" -ForegroundColor Cyan

try {
    $Profiles = Get-NetFirewallProfile

    Write-Host "`n--- Firewall Profiles ---" -ForegroundColor Yellow

    foreach ($Profile in $Profiles) {
        Write-Host "`nProfile: $($Profile.Name)"
        Write-Host "Enabled: $($Profile.Enabled)"
        Write-Host "Default Inbound Action: $($Profile.DefaultInboundAction)"
        Write-Host "Default Outbound Action: $($Profile.DefaultOutboundAction)"
        Write-Host "Notify on Listen: $($Profile.NotifyOnListen)"

        if ($Profile.Enabled -eq $true) {
            Write-Host "Status: Firewall profile is enabled." -ForegroundColor Green
        }
        else {
            Write-Host "Warning: Firewall profile is disabled." -ForegroundColor Red
        }
    }

    Write-Host "`n--- Enabled Inbound Rules Review ---" -ForegroundColor Yellow

    $InboundRules = Get-NetFirewallRule -Enabled True -Direction Inbound |
        Select-Object DisplayName, Profile, Action, Enabled |
        Sort-Object DisplayName

    if ($InboundRules) {
        $InboundRules | Format-Table -AutoSize
    }
    else {
        Write-Host "No enabled inbound rules found." -ForegroundColor Green
    }

    Write-Host "`n--- Review Notes ---" -ForegroundColor Yellow
    Write-Host "- Confirm firewall profiles are enabled according to company policy."
    Write-Host "- Review inbound rules for unnecessary exposure."
    Write-Host "- Pay close attention to RDP, SMB, and remote management exceptions."
    Write-Host "- Disable unnecessary exceptions only after approval."
}
catch {
    Write-Host "Unable to retrieve firewall status." -ForegroundColor Red
    Write-Host "Try running PowerShell as Administrator." -ForegroundColor Red
    Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host "`n===== Firewall Check Complete =====" -ForegroundColor Cyan
