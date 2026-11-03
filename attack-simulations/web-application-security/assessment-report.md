# Web Application Security Assessment Report

## 1. Overview

**Target:** OWASP Juice Shop  
**Environment:** Kali Linux  
**Testing Tool:** Burp Suite Community Edition  
**Target URL:** http://127.0.0.1:42000  
**Assessment Type:** Local Web Application Security Assessment

## 2. Objectives

- Understand HTTP requests and responses.
- Analyse application response headers.
- Inspect search API communication.
- Understand input handling.
- Examine cookie and session security.
- Review authentication and access-control behaviour.

## 3. Tools Used

| Tool | Purpose |
|---|---|
| Kali Linux | Security testing environment |
| Burp Suite Community Edition | HTTP interception and analysis |
| OWASP Juice Shop | Intentionally vulnerable training application |

## 4. Assessment Activities

### 4.1 HTTP Traffic Interception

Captured the homepage HTTP request using Burp Suite.

- Method: GET
- Endpoint: /
- Response: 200 OK

### 4.2 HTTP Security Header Analysis

Inspected HTTP response headers.

Observed:
- X-Content-Type-Options: nosniff
- X-Frame-Options: SAMEORIGIN
- Content-Type: text/html

### 4.3 Search API Inspection

Inspected the product search API:

`/rest/products/search`

Observed a successful JSON response with HTTP status 200 OK.

The search query parameter was not conclusively verified.

### 4.4 Input Handling

Performed basic search-input observations using ordinary text and special characters.

No confirmed XSS vulnerability was established.

### 4.5 Cookie and Session Security

Reviewed cookie and session-management concepts and inspected the application traffic.

Detailed attribute-level findings require further evidence.

### 4.6 Authentication and Access Control

Reviewed login, logout and protected-resource access behaviour in the local training application.

Detailed authentication findings require captured evidence.

## 5. Limitations

- Some search requests were not consistently captured in Burp HTTP history.
- No XSS vulnerability was confirmed.
- Cookie attributes and authentication responses require further verification.
- No comprehensive vulnerability scan was performed.

## 6. Conclusion

A local web application security assessment environment was established using Burp Suite Community Edition and OWASP Juice Shop.

The assessment provided practical exposure to HTTP interception, response-header analysis, API communication, input handling, session security concepts and authentication workflows.

Further testing is required before making confirmed vulnerability claims.
