<#
.SYNOPSIS
    Checks BitLocker compliance status.

.DESCRIPTION
    This script reviews BitLocker encryption status for available volumes.
    It reports mount point, volume status, protection status, encryption percentage,
    encryption method, and lock status.

.NOTES
    Author: Daniel O'Leary
    Purpose: Portfolio / Endpoint Encryption Review
#>

Write-Host "===== BitLocker Compliance Check =====" -ForegroundColor Cyan

try {
    $Volumes = Get-BitLockerVolume

    foreach ($Volume in $Volumes) {
        Write-Host "`nMount Point: $($Volume.MountPoint)" -ForegroundColor Yellow
        Write-Host "Volume Type: $($Volume.VolumeType)"
        Write-Host "Volume Status: $($Volume.VolumeStatus)"
        Write-Host "Protection Status: $($Volume.ProtectionStatus)"
        Write-Host "Encryption Percentage: $($Volume.EncryptionPercentage)%"
        Write-Host "Encryption Method: $($Volume.EncryptionMethod)"
        Write-Host "Lock Status: $($Volume.LockStatus)"

        if ($Volume.ProtectionStatus -eq "On" -and $Volume.EncryptionPercentage -eq 100) {
            Write-Host "Compliance Status: Encrypted and protected." -ForegroundColor Green
        }
        elseif ($Volume.ProtectionStatus -eq "Off") {
            Write-Host "Compliance Status: Not protected." -ForegroundColor Red
        }
        else {
            Write-Host "Compliance Status: Review needed." -ForegroundColor Yellow
        }
    }

    Write-Host "`n--- Review Notes ---" -ForegroundColor Yellow
    Write-Host "- Confirm recovery keys are backed up according to company policy."
    Write-Host "- Investigate devices where BitLocker is disabled or suspended."
    Write-Host "- Confirm encryption requirements match organizational standards."
    Write-Host "- Escalate devices that should be encrypted but are not protected."
}
catch {
    Write-Host "Unable to retrieve BitLocker information." -ForegroundColor Red
    Write-Host "Try running PowerShell as Administrator." -ForegroundColor Red
    Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host "`n===== BitLocker Compliance Check Complete =====" -ForegroundColor Cyan
