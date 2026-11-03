# Security Header Assessment

## Target
OWASP Juice Shop (Local)

## Tool
Burp Suite Community Edition

## Assessment
HTTP Security Header Inspection

## Observations

| Header | Observed Value | Status |
|---|---|---|
| X-Content-Type-Options | nosniff | Present |
| X-Frame-Options | SAMEORIGIN | Present |
| Content-Security-Policy | Not observed | To investigate |
| Strict-Transport-Security | Not observed in HTTP response | HTTPS assessment required |
| Referrer-Policy | Not yet verified | Pending |
| Permissions-Policy | Not yet verified | Pending |

## Conclusion
Initial HTTP response headers were inspected using Burp Suite.
Further testing is required before confirming security weaknesses.
