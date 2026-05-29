# Windows Security Baseline Notes

## Overview

A security baseline is a standard set of configurations used to reduce risk and improve consistency across endpoints. Security baselines help ensure that Windows devices follow approved security expectations and reduce common misconfigurations.

For Windows endpoints, a baseline may include account security, antivirus protection, firewall configuration, disk encryption, patch management, logging, and access control.

## Why Security Baselines Matter

Security baselines help organizations:

- Reduce misconfigurations
- Improve endpoint consistency
- Lower attack surface
- Support compliance requirements
- Improve incident response readiness
- Make endpoint audits easier
- Enforce least privilege
- Standardize workstation security settings

## Common Baseline Areas

### Account Security

Account security focuses on making sure users and administrators have only the access they need.

Important checks include:

- Review local administrator membership.
- Remove unnecessary local administrator accounts.
- Avoid shared administrator accounts.
- Confirm users operate with standard accounts when possible.
- Review stale or unused accounts.
- Confirm password policies follow organizational standards.
- Require MFA for cloud-based access where applicable.

### Endpoint Protection

Endpoint protection helps detect and block malware, suspicious activity, and potentially unwanted applications.

Important checks include:

- Confirm Microsoft Defender Antivirus is enabled.
- Confirm real-time protection is enabled.
- Confirm cloud-delivered protection is enabled.
- Confirm security intelligence definitions are current.
- Review Defender threat history.
- Confirm tamper protection is enabled where available.
- Confirm EDR or antivirus tools are reporting correctly.

### Firewall Protection

Windows Firewall helps control network traffic to and from the endpoint.

Important checks include:

- Confirm Windows Firewall is enabled.
- Review Domain, Private, and Public firewall profiles.
- Review enabled inbound rules.
- Disable unnecessary firewall exceptions.
- Review RDP, SMB, and remote management exposure.
- Confirm firewall settings follow company policy.

### Disk Encryption

Disk encryption helps protect data if a device is lost, stolen, or accessed without authorization.

Important checks include:

- Confirm BitLocker is enabled.
- Confirm the operating system drive is encrypted.
- Confirm BitLocker protection is active.
- Confirm recovery keys are backed up according to company policy.
- Review encryption method.
- Investigate devices where BitLocker is suspended or disabled.

### Patch Management

Patch management reduces exposure to known vulnerabilities.

Important checks include:

- Confirm Windows Update is enabled.
- Review pending updates.
- Review failed updates.
- Confirm security updates are being installed.
- Restart the device if updates require reboot.
- Confirm update policies are managed if applicable.

### Logging and Monitoring

Logs and monitoring tools help support troubleshooting and security investigations.

Important checks include:

- Confirm event logging is enabled.
- Review security logs when investigating issues.
- Confirm endpoint monitoring agents are installed.
- Confirm RMM or EDR agents are reporting properly.
- Review Defender detections.
- Escalate unusual or suspicious activity.

### Least Privilege

Least privilege means users, services, and administrators should only have the access needed to perform their role.

Important checks include:

- Review local administrator group membership.
- Remove unnecessary privileged access.
- Review service account permissions.
- Avoid using administrator accounts for daily work.
- Document approved privileged access.
- Review group memberships regularly.

## Practical Review Questions

When reviewing an endpoint, useful questions include:

- Is Microsoft Defender enabled and updated?
- Is the Windows Firewall enabled?
- Is BitLocker enabled and protecting the operating system drive?
- Are unnecessary local administrators present?
- Are Windows updates current?
- Are endpoint security tools reporting correctly?
- Are unauthorized applications installed?
- Are there repeated failed login attempts?
- Is the device compliant with company policy?
- Are there signs of suspicious activity?

## Example Technician Note

Performed endpoint security baseline review. Checked Microsoft Defender status, Windows Firewall profiles, BitLocker encryption, local administrator membership, update status, and endpoint monitoring status. Findings were documented for review and escalation if needed.

## Real-World Relevance

Security baseline reviews are useful for IT support, MSP technicians, SOC analysts, and junior security engineers. Endpoint misconfigurations are common and can create security gaps if they are not reviewed.

## Skills Demonstrated

- Endpoint hardening awareness
- Windows security administration
- Security baseline documentation
- Risk reduction concepts
- Least privilege review
- Defensive security fundamentals
- Technical documentation
