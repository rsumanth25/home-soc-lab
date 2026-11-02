# DNS Traffic Analysis – Wireshark

## Objective
Analyze DNS queries and responses using Wireshark to understand domain name resolution.

## Environment
- Operating System: Kali Linux
- Tool: Wireshark
- Interface: eth0
- Protocol: DNS

## Activity
Generated DNS traffic and inspected the packets using the Wireshark display filter:

`dns`

## Observations

| Field | Result |
|---|---|
| Queried domain | api.github.com |
| Query type | A |
| DNS server | 192.168.31.1 |
| Client IP | 10.0.2.15 |
| Returned IPv4 address | 20.207.73.85 |
| DNS response code | No error |
| Response time | 48.617256 ms |

## Analysis
The DNS server successfully resolved api.github.com and returned an IPv4 address.

The capture also contained an AAAA query and corresponding response for IPv6 resolution.

## Security Relevance
SOC analysts can examine DNS traffic to identify suspicious domains, unusual DNS queries, unexpected DNS servers and potential DNS tunnelling activity.

## Conclusion
The DNS investigation demonstrated how to identify DNS queries, inspect response records and interpret DNS resolution activity using Wireshark.

