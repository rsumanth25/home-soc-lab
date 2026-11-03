# Home SOC Lab – Cybersecurity Monitoring & Analysis

A hands-on cybersecurity lab built to develop practical skills in Security Operations Center (SOC) monitoring, network reconnaissance, traffic analysis, web application security assessment, and Windows endpoint monitoring.

This repository documents practical security exercises, tools, configurations, investigation findings, and supporting screenshots performed in a controlled lab environment.

## 🎯 Project Objectives

- Develop practical SOC Analyst L1 skills.
- Understand network reconnaissance and port scanning.
- Capture and analyse network traffic.
- Perform basic web application security assessments.
- Monitor Windows endpoint activities using Sysmon.
- Investigate security events and understand endpoint telemetry.
- Build a foundation for SIEM integration and security monitoring.

## 🛠️ Lab Environment & Tools

| Category | Tools / Technologies |
|---|---|
| Operating Systems | Kali Linux, Windows 11 Home |
| Virtualisation | Oracle VirtualBox |
| Network Scanning | Nmap |
| Network Analysis | Wireshark |
| Web Application Security | Burp Suite Community Edition, OWASP Juice Shop |
| Endpoint Monitoring | Microsoft Sysmon |
| Command Line | Linux Terminal, Windows PowerShell |
| Documentation & Version Control | Git, GitHub |

## 📁 Repository Structure

```text
home-soc-lab/
│
├── attack-simulations/
│   │
│   ├── nmap-scanning/
│   │   ├── screenshots/
│   │   ├── README.md
│   │   ├── findings.md
│   │   └── scan-results/
│   │
│   ├── network-traffic-analysis/
│   │   ├── screenshots/
│   │   ├── README.md
│   │   ├── findings.md
│   │   └── capture-files/
│   │
│   └── web-application-security/
│       ├── screenshots/
│       ├── assessment-report.md
│       ├── authentication-access-control.md
│       ├── cookie-session-analysis.md
│       └── security-header-assessment.md
│
├── windows-endpoint-monitoring-sysmon/
│   ├── screenshots/
│   ├── README.md
│   ├── findings.md
│   └── sysmon-config.xml
│
├── scripts/
│   └── kali/
│       ├── network-scan.sh
│       └── README.md
│
└── README.md
```

*Note: The folder structure above describes the intended organisation. Individual scan results and capture files are stored using the filenames documented in their respective project folders.*

## 🔬 Projects

### 1. Nmap – Network Reconnaissance & Port Scanning

**Objective:** Understand network discovery, port scanning, and service identification using Nmap.

**Tools:** Nmap, Kali Linux, Bash.

**Practical exercises:**
- Host discovery within the VirtualBox NAT subnet.
- TCP port scanning.
- Service and version detection.
- Localhost port analysis.
- Gateway service scanning.
- Automated scanning using a Bash script.

**Key learning outcomes:**
- Network discovery and enumeration.
- TCP port states.
- Service identification.
- Understanding basic network exposure.

**Project files:** [`attack-simulations/nmap-scanning/`](attack-simulations/nmap-scanning/)

---

### 2. Wireshark – Network Traffic Analysis

**Objective:** Capture and investigate network traffic to understand communication protocols and network behaviour.

**Tools:** Wireshark, Kali Linux, curl.

**Practical exercises:**
- ICMP traffic capture.
- DNS query and response analysis.
- TCP three-way handshake analysis.
- HTTP traffic inspection.
- HTTPS and TLS traffic inspection.

**Key learning outcomes:**
- Packet capture and filtering.
- DNS resolution analysis.
- TCP handshake investigation.
- Understanding HTTP and HTTPS communication.
- Identifying network communication patterns.

**Project files:** [`attack-simulations/network-traffic-analysis/`](attack-simulations/network-traffic-analysis/)

---

### 3. Web Application Security Assessment

**Objective:** Perform basic web application security assessment using a deliberately vulnerable application in a controlled local environment.

**Tools:** Burp Suite Community Edition, OWASP Juice Shop, Kali Linux.

**Practical exercises:**
- Configuring Burp Suite Proxy.
- Capturing and inspecting HTTP requests and responses.
- Inspecting response security headers.
- Exploring authentication and access-control behaviour.
- Reviewing cookie and session-related information.
- Performing basic input-handling tests.

**Key learning outcomes:**
- HTTP request and response analysis.
- Intercepting web traffic.
- Understanding authentication and session management.
- Basic web application security testing.
- Security assessment documentation.

**Project files:** [`attack-simulations/web-application-security/`](attack-simulations/web-application-security/)

**Note:** Documentation and initial testing are available. Some assessment activities remain incomplete, and no unverified vulnerability is claimed.

---

### 4. Windows Endpoint Monitoring Using Sysmon

**Objective:** Monitor Windows endpoint activities and investigate system events using Microsoft Sysmon.

**Tools:** Microsoft Sysmon v15.22, Windows 11 Home, Windows Event Viewer, PowerShell.

**Practical exercises:**

| Event ID | Event Type | Investigation |
|---|---|---|
| 1 | Process Creation | Investigated Notepad process execution |
| 3 | Network Connection | Examined network connection telemetry |
| 11 | File Creation | Investigated file creation events |
| 22 | DNS Query | Analysed DNS queries for example.com |

**Key learning outcomes:**
- Windows endpoint telemetry collection.
- Process execution investigation.
- Network connection monitoring.
- File activity monitoring.
- DNS query investigation.
- Understanding Sysmon event logs.

**Project files:** [`windows-endpoint-monitoring-sysmon/`](windows-endpoint-monitoring-sysmon/)

---

## 📜 Scripts

### Automated Network Scanning

A Bash script is included to automate basic Nmap network scanning operations.

**Location:** [`scripts/kali/`](scripts/kali/)

## 📸 Screenshots & Evidence

Each project has its own `screenshots/` directory to organise practical evidence.

- Nmap Scanning: `attack-simulations/nmap-scanning/screenshots/`
- Network Traffic Analysis: `attack-simulations/network-traffic-analysis/screenshots/`
- Web Application Security: `attack-simulations/web-application-security/screenshots/`
- Windows Endpoint Monitoring: `windows-endpoint-monitoring-sysmon/screenshots/`

Screenshots will be added after reviewing and removing sensitive information.

## 🚀 Future Enhancements

The following activities are planned to extend the Home SOC Lab:

- Install and configure Splunk Enterprise.
- Integrate Windows Sysmon logs using Splunk Universal Forwarder.
- Develop SPL queries for endpoint investigations.
- Create dashboards for process, network, file, and DNS activity.
- Develop basic security detection alerts.
- Perform additional controlled security investigations.
- Document SOC investigation workflows and incident reports.

## 🔐 Safety & Responsible Testing

- All exercises are conducted in a controlled personal lab environment.
- Web application testing is performed against the locally installed OWASP Juice Shop.
- Network scanning is limited to authorised lab systems and networks.
- No unauthorised systems are targeted.
- Sensitive information, credentials, tokens, and private data should not be published.

## 📚 Learning Goals

This project is intended to develop practical knowledge in:

- Network reconnaissance and enumeration.
- Network protocol and packet analysis.
- Web application security fundamentals.
- Windows endpoint monitoring.
- Security event investigation.
- SIEM fundamentals and SOC workflows.

## 👨‍💻 Author

**Rayeni Sumanth Reddy**

Cybersecurity Enthusiast | Aspiring SOC Analyst

GitHub: [@rsumanth25](https://github.com/rsumanth25)

---

*This repository is continuously updated as new security monitoring exercises, investigations, and SOC lab projects are completed.*
