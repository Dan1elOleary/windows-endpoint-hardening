# Windows Endpoint Hardening

This repository contains Windows endpoint hardening notes, checklists, and PowerShell scripts focused on improving the security posture of Windows 10/11 workstations.

The purpose of this repository is to document practical endpoint security checks that are useful in IT support, MSP, help desk, and junior cybersecurity roles. These resources connect everyday endpoint support tasks with security-focused administration, including Microsoft Defender review, BitLocker compliance, Windows Firewall validation, local administrator auditing, and baseline documentation.

## Repository Contents

| File                              | Purpose                                                                                   |
| --------------------------------- | ----------------------------------------------------------------------------------------- |
| windows-11-hardening-checklist.md | Checklist for reviewing common Windows 11 endpoint security settings.                     |
| security-baseline-notes.md        | Notes explaining endpoint security baseline concepts and why they matter.                 |
| defender-security-checks.ps1      | PowerShell script for reviewing Microsoft Defender security status.                       |
| local-admin-review.ps1            | PowerShell script for reviewing local administrator group membership.                     |
| firewall-status-check.ps1         | PowerShell script for checking Windows Firewall profile status and enabled inbound rules. |
| bitlocker-compliance-check.ps1    | PowerShell script for checking BitLocker encryption and protection status.                |

## Skills Demonstrated

* Windows endpoint security
* PowerShell scripting
* Microsoft Defender review
* BitLocker compliance checks
* Windows Firewall review
* Local administrator auditing
* Security baseline documentation
* Least privilege review
* Endpoint hardening fundamentals
* MSP-style endpoint review
* Technical documentation

## Use Cases

These scripts and notes can support:

* Workstation security reviews
* Endpoint hardening documentation
* Security baseline checks
* MSP endpoint audits
* Help desk troubleshooting
* Junior SOC/security analyst practice
* Pre-escalation review steps
* Basic compliance checks

## Security Focus Areas

This repository focuses on several important endpoint security areas:

### Account and Privilege Review

Local administrator access should be reviewed regularly. Unnecessary administrator privileges increase the impact of malware, credential theft, and user error.

### Microsoft Defender

Microsoft Defender should be enabled, updated, and monitored to help detect malware, suspicious activity, and potentially unwanted applications.

### Windows Firewall

Windows Firewall helps reduce network exposure by controlling inbound and outbound traffic. Firewall profiles and inbound rules should be reviewed for unnecessary access.

### BitLocker Encryption

BitLocker helps protect data if a device is lost, stolen, or accessed without authorization. Devices should be reviewed to confirm encryption and protection status.

### Security Baselines

Security baselines help standardize endpoint settings, reduce misconfigurations, and improve overall security posture.

## PowerShell Scripts

The PowerShell scripts in this repository are designed to collect useful security information from Windows endpoints. They are intended for review and documentation purposes.

Current scripts include:

* Defender status review
* Local administrator review
* Firewall profile review
* BitLocker compliance check

## Example Review Workflow

A basic endpoint hardening review may include:

1. Review local administrator membership.
2. Confirm Microsoft Defender is enabled.
3. Confirm Windows Firewall profiles are enabled.
4. Confirm BitLocker encryption is active.
5. Review Windows security baseline notes.
6. Document findings.
7. Escalate suspicious or non-compliant results.

## Portfolio Purpose

This repository is part of my professional IT and cybersecurity portfolio. It demonstrates my ability to connect IT support experience with security-focused endpoint administration, PowerShell automation, and technical documentation.

## Disclaimer

These scripts and notes are for educational and portfolio purposes. They do not contain client data, private company procedures, or confidential information. Scripts should be reviewed, tested, and adjusted before use in a production environment.
