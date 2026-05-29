<#
.SYNOPSIS
    Reviews local administrator group membership.

.DESCRIPTION
    This script lists members of the local Administrators group.
    It is intended to help identify accounts with elevated privileges on a Windows endpoint.

.NOTES
    Author: Daniel O'Leary
    Purpose: Portfolio / Local Administrator Review
#>

Write-Host "===== Local Administrator Review =====" -ForegroundColor Cyan

try {
    $AdminGroup = Get-LocalGroupMember -Group "Administrators"

    Write-Host "`n--- Local Administrators ---" -ForegroundColor Yellow

    foreach ($Member in $AdminGroup) {
        Write-Host "Name: $($Member.Name)"
        Write-Host "Object Class: $($Member.ObjectClass)"
        Write-Host "Principal Source: $($Member.PrincipalSource)"
        Write-Host ""
    }

    Write-Host "Total Administrators Found: $($AdminGroup.Count)" -ForegroundColor Green

    Write-Host "`n--- Review Notes ---" -ForegroundColor Yellow
    Write-Host "- Confirm each administrator is approved."
    Write-Host "- Remove stale or unnecessary administrator accounts according to policy."
    Write-Host "- Use least privilege wherever possible."
    Write-Host "- Document any changes before removing administrator rights."
    Write-Host "- Escalate unknown or suspicious administrator accounts."
}
catch {
    Write-Host "Unable to retrieve local administrators." -ForegroundColor Red
    Write-Host "Try running PowerShell as Administrator." -ForegroundColor Red
    Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host "`n===== Local Admin Review Complete =====" -ForegroundColor Cyan
