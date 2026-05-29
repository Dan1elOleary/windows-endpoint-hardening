# Windows 11 Endpoint Hardening Checklist

## Overview

This checklist documents common Windows 11 endpoint hardening areas that can help improve workstation security. It is designed for IT support, MSP, help desk, and junior cybersecurity environments.

Endpoint hardening reduces risk by improving system configuration, limiting unnecessary access, enabling security controls, and improving visibility across workstations.

## Account and Access Review

Reviewing account access is one of the most important parts of endpoint hardening. Unnecessary administrative access increases the impact of malware, credential theft, and user error.

Recommended checks include:

* Confirm the user has a standard account unless administrative access is required.
* Review local administrator group membership.
* Remove unnecessary local administrator accounts.
* Disable or rename unused local accounts if required by policy.
* Confirm password policy follows organizational standards.
* Confirm MFA is enforced for cloud-based account access.
* Review stale or unused accounts.

## Microsoft Defender Review

Microsoft Defender helps protect Windows endpoints from malware, suspicious activity, and potentially unwanted applications.

Recommended checks include:

* Confirm Microsoft Defender Antivirus is enabled.
* Confirm real-time protection is enabled.
* Confirm cloud-delivered protection is enabled.
* Confirm security intelligence definitions are current.
* Confirm tamper protection is enabled where available.
* Review threat history for recent detections.
* Confirm the device is reporting to the expected security platform.

## Windows Firewall Review

Windows Firewall helps control inbound and outbound network traffic. A disabled firewall or overly permissive inbound rule can increase endpoint risk.

Recommended checks include:

* Confirm Windows Firewall is enabled.
* Review Domain, Private, and Public firewall profiles.
* Confirm inbound rules are limited to required services.
* Disable unnecessary firewall exceptions.
* Confirm remote access rules follow company policy.
* Review exposed services such as RDP, SMB, and remote management.

## BitLocker and Encryption

BitLocker helps protect data if a device is lost, stolen, or accessed without authorization.

Recommended checks include:

* Confirm BitLocker is enabled on supported devices.
* Confirm the operating system drive is encrypted.
* Confirm the recovery key is backed up according to company policy.
* Review encryption method.
* Confirm protection status is active.
* Investigate devices where encryption is suspended or disabled.

## Windows Updates

Patch management is critical because outdated systems may contain known vulnerabilities.

Recommended checks include:

* Confirm Windows Update is enabled.
* Confirm the device is receiving security updates.
* Review pending updates.
* Restart the device if updates require reboot.
* Confirm update policy is managed if applicable.
* Review failed update history if patching issues are reported.

## Device Security

Device security features help protect the system before and during operating system startup.

Recommended checks include:

* Confirm Secure Boot is enabled if supported.
* Confirm TPM is enabled if supported.
* Review virtualization-based security if applicable.
* Confirm device health meets organizational standards.
* Confirm BIOS or firmware updates are handled according to company policy.

## Application Security

Unapproved or outdated software can introduce security risk.

Recommended checks include:

* Remove unnecessary or unsupported software.
* Confirm browsers are updated.
* Review startup applications.
* Review installed remote access tools.
* Confirm approved security software is installed.
* Remove unauthorized tools if required by policy.

## Logging and Monitoring

Logs and monitoring tools help support investigations and troubleshooting.

Recommended checks include:

* Confirm event logging is enabled.
* Review recent security events if troubleshooting.
* Confirm endpoint monitoring or RMM agent is installed.
* Confirm EDR or antivirus agent is reporting properly.
* Document unusual activity.
* Escalate suspicious events when needed.

## Network Security

Network configuration issues can affect both security and connectivity.

Recommended checks include:

* Confirm the device has a valid IP configuration.
* Review DNS settings.
* Confirm VPN client status if required.
* Review active network adapters.
* Disable unused adapters if appropriate.
* Confirm the device is connected to the correct network.

## Hardening Notes

Hardening should be performed carefully. Some settings can affect user productivity, application compatibility, remote support tools, or business workflows.

Before making major changes:

* Follow organizational policy.
* Confirm business requirements.
* Test changes when possible.
* Document what was changed.
* Escalate unclear findings.

## Example Technician Note

Performed Windows endpoint hardening review. Checked local administrator membership, Microsoft Defender status, Windows Firewall profiles, BitLocker encryption, update status, installed software, and endpoint monitoring status. No unauthorized local administrator accounts were identified. Device security controls were reviewed and documented.

## Skills Demonstrated

* Windows endpoint security
* Security baseline review
* Microsoft Defender review
* Windows Firewall review
* BitLocker compliance review
* Local administrator auditing
* Technical documentation
* MSP-style endpoint support
