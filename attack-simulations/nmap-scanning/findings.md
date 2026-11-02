# Nmap Network Reconnaissance – Findings Report

## 1. Project Overview
Performed network reconnaissance and TCP port scanning using Nmap on Kali Linux as part of the Home SOC Lab.

## 2. Environment
- Operating System: Kali Linux
- Nmap Version: 7.991
- Target: Kali Linux localhost (127.0.0.1)
- Network Interface: eth0
- NAT IP Address: 10.0.2.15

## 3. Scanning Activities

### A. Basic TCP Scan
Command:
`nmap 127.0.0.1`

Result:
- Target host was up.
- 1,000 common TCP ports were scanned.
- No open TCP ports were identified.

### B. Service Version Detection
Command:
`nmap -sV 127.0.0.1`

Result:
- Service detection was performed.
- No open TCP services were identified.

### C. Full TCP Port Scan
Command:

`nmap -p- 127.0.0.1`

Result:
- 65,535 TCP ports were scanned.
- All 65,535 ports were closed.
- No open or filtered TCP ports were reported.

## 4. Network Configuration
- Kali IPv4 address: 10.0.2.15
- Subnet: 10.0.2.0/24
- Default gateway: 10.0.2.2
- Network mode: VirtualBox NAT

## 5. Security Observations
- No listening TCP services were identified on the scanned localhost ports.
- The scan established a baseline of the Kali machine's TCP port exposure.
- Further assessment is required against the Windows endpoint once the SOC network is configured.

## 6. Conclusion
The initial Nmap reconnaissance exercises established a baseline for the Kali Linux machine. Host discovery, service identification, and endpoint scanning will be extended as the SOC lab environment develops.

## 7. Scope Limitation
These initial results represent localhost scanning and preliminary NAT network discovery. They do not represent a completed assessment of the Windows endpoint or the entire SOC network.

