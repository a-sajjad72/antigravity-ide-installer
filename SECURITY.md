# Security Policy

We take the security of this project seriously. Because the installer script executes with administrative (`sudo`) privileges on the user's operating system, we want to ensure any security issues are handled with high priority and confidentiality.

---

## Supported Versions

Only the latest release on the `main` branch of this repository is actively supported with security updates. We advise all users to upgrade to the latest version immediately if a security vulnerability is identified and patched.

---

## Reporting a Vulnerability

**Please do not report security vulnerabilities through public GitHub issues.**

If you discover a security vulnerability (e.g., privilege escalation vectors, insecure archive download verification, or sandbox bypasses), please report it via one of the following methods:

1. **GitHub Security Advisories:** Submit a private vulnerability report directly through the repository's "Security" tab if available.
2. **Contacting Maintainers:** Alternatively, please open a standard issue asking for a private communication channel with the maintainers regarding a security matter. Do not post details of the vulnerability in that initial request.

### What to Include
Please provide:
* A detailed description of the vulnerability.
* Steps to reproduce the issue (proof-of-concept scripts or commands).
* The potential impact (e.g., local privilege escalation, remote code execution).
* Any suggested remediation or patches.

We will acknowledge your report within 48 hours and work with you to coordinate a security release.
