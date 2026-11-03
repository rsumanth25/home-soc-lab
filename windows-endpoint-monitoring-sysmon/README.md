# Windows Endpoint Monitoring Using Sysmon

## Project Overview

This project demonstrates Windows endpoint monitoring using Microsoft Sysmon on a physical Windows 11 Home system. The objective is to collect and investigate endpoint telemetry commonly used by SOC Analysts during security monitoring and incident response.

## Objectives

- Install and configure Microsoft Sysmon.
- Monitor Windows process creation and termination.
- Monitor network connections.
- Monitor file creation activity.
- Monitor DNS queries.
- Investigate Windows security events using Event Viewer.

## Environment and Tools

- Operating System: Windows 11 Home
- Monitoring Tool: Microsoft Sysmon v15.22
- Log Analysis: Windows Event Viewer
- Command-Line Tool: Windows PowerShell
- Virtualisation Environment: Oracle VirtualBox (Kali Linux used for other lab exercises)

## Sysmon Event IDs Investigated

| Event ID | Description | Investigation |
|---|---|---|
| 1 | Process Creation | Analysed Notepad process execution |
| 3 | Network Connection | Observed network connection telemetry |
| 11 | File Creation | Observed file creation events |
| 22 | DNS Query | Analysed a DNS query for example.com |

## Practical Exercises

### 1. Process Creation – Event ID 1

Executed Notepad using PowerShell and examined the resulting Sysmon event.

Investigated process image, process ID, command line, user context and parent process information.

### 2. Network Connection – Event ID 3

Enabled network connection monitoring and generated a TCP connectivity test using PowerShell.

Observed network telemetry, including source and destination information, protocol and destination port.

### 3. File Creation – Event ID 11

Enabled file creation monitoring and examined file creation events recorded by Sysmon.

Inspected process image and target filename information.

### 4. DNS Query – Event ID 22

Enabled DNS query monitoring and executed:

```powershell
Resolve-DnsName example.com
```

Verified the resulting Sysmon event and examined the queried domain, process image, query status and DNS results.

## Configuration

The project uses a custom Sysmon XML configuration to enable:

- NetworkConnect
- FileCreate
- DnsQuery

Process creation monitoring is also retained.

## Key Learnings

- Understanding Windows endpoint telemetry.
- Investigating process execution and parent-child process relationships.
- Analysing network connection activity.
- Monitoring file creation events.
- Investigating DNS queries.
- Understanding the role of endpoint telemetry in SOC operations.

## Limitations

This project uses a controlled personal lab environment. The exercises demonstrate basic event collection and investigation; they do not constitute a complete enterprise detection or incident response deployment.

## Future Improvements

- Forward Sysmon events to Splunk.
- Create dashboards for endpoint activity.
- Develop SPL queries for suspicious process execution and network activity.
- Build security alerts and investigation workflows.
