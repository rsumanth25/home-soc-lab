# Network Traffic Analysis Using Wireshark

## Project Overview

This project focuses on capturing, monitoring, and analysing network traffic using Wireshark in a controlled Kali Linux lab environment.

The objective is to understand network communication, examine packet-level information, and investigate commonly used network protocols, including ICMP, DNS, TCP, HTTP, and HTTPS.

The project demonstrates practical network traffic analysis techniques that are useful for SOC monitoring, network troubleshooting, and security investigations.

## Objectives

- Capture and analyse network packets using Wireshark.
- Understand network communication at the packet level.
- Investigate DNS queries and responses.
- Analyse TCP three-way handshake operations.
- Inspect HTTP request and response traffic.
- Understand HTTPS and TLS communication.
- Apply Wireshark display filters to investigate network activity.

## Lab Environment

| Component | Details |
|---|---|
| Operating System | Kali Linux |
| Virtualisation | Oracle VirtualBox |
| Network Analysis Tool | Wireshark 4.6.9 |
| Command-Line Tool | curl |
| Capture Format | PCAPNG |

## Practical Exercises

### 1. ICMP Traffic Analysis

**Objective:** Capture and analyse ICMP traffic to understand basic network connectivity and packet exchange.

**Activity performed:**
- Captured ICMP traffic involving the VirtualBox NAT gateway.
- Examined source and destination IP addresses.
- Inspected ICMP packet information.

**Key learning:** Understanding ICMP communication and basic network connectivity testing.

### 2. DNS Traffic Analysis

**Objective:** Investigate DNS queries and responses to understand domain name resolution.

**Activity performed:**
- Generated DNS queries for `api.github.com`.
- Captured DNS request and response packets.
- Identified the queried domain and DNS response.
- Examined returned A record information.

**Key observation:**
- DNS query successfully resolved `api.github.com`.
- An A record response was observed.
- DNS response time was approximately 48.62 ms.

**Key learning:** Understanding DNS queries, responses, and domain resolution.

### 3. TCP Three-Way Handshake Analysis

**Objective:** Understand how TCP connections are established between communicating systems.

**Activity performed:**
- Captured TCP connection traffic.
- Applied the display filter `tcp.stream eq 0`.
- Identified the TCP handshake sequence.

**Handshake sequence:**
1. SYN – Client initiates the connection.
2. SYN-ACK – Server acknowledges the request.
3. ACK – Client acknowledges the server response.

**Key learning:** Understanding TCP connection establishment and packet-level communication.

### 4. HTTP Traffic Analysis

**Objective:** Inspect HTTP communication and understand how requests and responses are transmitted.

**Activity performed:**
- Generated an HTTP request using curl.
- Captured HTTP traffic in Wireshark.
- Inspected HTTP response information.
- Examined HTTP communication using display filters.

**Command used:**

```bash
curl -I http://example.com
```

**Key learning:** Understanding HTTP requests, response headers, and unencrypted web communication.

### 5. HTTPS and TLS Traffic Analysis

**Objective:** Examine encrypted web communication and understand TLS traffic.

**Activity performed:**
- Generated an HTTPS request using curl.
- Captured HTTPS traffic.
- Inspected TLS-related packet information.
- Examined encrypted communication patterns.

**Command used:**

```bash
curl -I https://example.com
```

**Key learning:** Understanding encrypted network communication and the role of TLS in protecting data transmission.

## Wireshark Display Filters

The following filters were used during the exercises:

| Display Filter | Purpose |
|---|---|
| `icmp` | Display ICMP packets |
| `dns` | Display DNS traffic |
| `tcp` | Display TCP packets |
| `http` | Display HTTP traffic |
| `tls` | Display TLS traffic |
| `tcp.stream eq 0` | Display packets belonging to TCP stream 0 |

## Project Files

| File | Description |
|---|---|
| `icmp-gateway-capture.pcapng` | ICMP traffic capture |
| `dns-capture.pcapng` | DNS traffic capture |
| `tcp-handshake-capture.pcapng` | TCP handshake capture |
| `http-capture.pcapng` | HTTP traffic capture |
| `https-capture.pcapng` | HTTPS traffic capture |
| `dns-analysis.md` | DNS investigation notes |
| `findings.md` | Consolidated traffic analysis findings |
| `screenshots/` | Screenshots of practical exercises |

## Key Skills Developed

- Network packet capture and analysis.
- DNS query and response investigation.
- TCP handshake analysis.
- HTTP and HTTPS traffic inspection.
- TLS communication fundamentals.
- Wireshark display filters.
- Basic network troubleshooting.
- Network security monitoring fundamentals.

## Relevance to SOC Operations

Network traffic analysis is an important activity in Security Operations Centers.

The skills demonstrated in this project provide a foundation for:

- Investigating suspicious network communications.
- Analysing DNS activity.
- Understanding connection establishment.
- Examining potentially insecure HTTP traffic.
- Identifying communication patterns during security investigations.

## Safety and Responsible Testing

- All captures were generated in a controlled personal lab environment.
- Testing was limited to authorised network activity.
- Captured traffic should be reviewed for sensitive information before public sharing.
- Raw PCAPNG files may contain browsing metadata, DNS queries, IP addresses, or other private information.

## Author

**Rayeni Sumanth Reddy**

Cybersecurity Enthusiast | Aspiring SOC Analyst

GitHub: [@rsumanth25](https://github.com/rsumanth25)

---

*This project is part of my Home SOC Lab, developed to gain practical experience in network security monitoring and SOC investigation techniques.*
