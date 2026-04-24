# NCL Category Reference

Quick-reference guide for every NCL category—descriptions, what to expect, resources, and tips. Aggregated from our Discord.

---

## Table of Contents

- [Getting Started](#getting-started)
- [Open Source Intelligence](#open-source-intelligence)
- [Cryptography](#cryptography)
- [Password Cracking](#password-cracking)
- [Forensics](#forensics)
- [Log Analysis](#log-analysis)
- [Network Traffic Analysis](#network-traffic-analysis)
- [Scanning & Reconnaissance](#scanning--reconnaissance)
- [Web Application Exploitation](#web-application-exploitation)
- [Wireless Access Exploitation](#wireless-access-exploitation)
- [Enumeration & Exploitation](#enumeration--exploitation)

---

## Getting Started

This is your catch-all for environment setup, tool installation, troubleshooting, general competition questions, and anything that doesn't fit neatly into a category. New to Linux? Have questions about Kali? Start here.

**Common topics:**

- Installing Kali Linux or security tools
- Virtual machine setup (VirtualBox, VMware, Hyper-V)
- Tool installation and configuration
- Competition logistics and rules
- Time management during the competition
- Team strategy and coordination
- Troubleshooting tools and environments
- General cybersecurity questions

**Resources:**

- Kali Linux: <https://www.kali.org/get-kali/>
- VirtualBox: <https://www.virtualbox.org/>
- Cybersecurity fundamentals (CompTIA Security+)
- CTF resources and guides
- Tool documentation and GitHub repos

**Starting tips:**

- Get Kali or Debian installed before competition season
- Set up a dedicated VM so you don't mess with your main system
- Have all tools pre-installed before the competition starts
- Write down commands you use frequently
- Join our Slack/Discord early and ask questions—no judgment
- Competition is about speed + accuracy; practice both
- Work as a team; assign categories based on strength

---

## Open Source Intelligence

Open Source Intelligence is all about finding publicly available information and using it to answer questions or build profiles. This category tests your ability to use tools, search engines, and public databases to answer targeted questions about people, organizations, and infrastructure.

**What to expect:**

- Geolocation challenges (finding locations from metadata, landmarks, shadows)
- Username/email OSINT tracing
- Company/domain research
- Social media intelligence
- Public record analysis

**Resources:**

- OSINT Framework: <https://osintframework.com>
- TheHarvester (information gathering tool)
- Google Dorking techniques
- EXIF data extraction tools
- Whois/DNS lookups

**Starting tips:**

- Google is your friend—learn advanced operators (`site:`, `filetype:`, `inurl:`)
- Screenshot everything and look for metadata
- Think like an investigator, not a hacker
- Cross-reference multiple sources
- No special tools needed—just patience and creativity

---

## Cryptography

Cryptography challenges involve breaking or analyzing encryption. Unlike "real" cryptography (which involves complex math), NCL crypto focuses on ciphers, substitution puzzles, steganography, and practical encryption scenarios. You don't need a math degree—you need pattern recognition and persistence.

**What to expect:**

- Classic ciphers (Caesar, Vigenere, ROT13)
- Substitution ciphers
- Steganography (hidden messages in images/files)
- PGP/GPG key usage
- Simple XOR operations

**Resources:**

- CyberChef: <https://gchq.github.io/CyberChef> (seriously, try everything)
- dcode.fr (cipher identification and breaking)
- Hashcat (for hash cracking if needed)
- Online cipher tools for specific types

**Starting tips:**

- Cryptography in NCL is not hard math—it's pattern matching
- CyberChef has a "magic" mode that can auto-detect some ciphers
- Try multiple approaches; sometimes brute force works
- Steganography requires looking at files with forensics tools
- Save your successful cipher attempts so you recognize them again

---

## Password Cracking

Password cracking challenges give you hashes or authentication scenarios and ask you to crack them or gain access. This involves using tools like Hashcat, John the Ripper, or online hash cracking services to recover plaintext passwords from hashes.

**What to expect:**

- MD5, SHA1, SHA256 hash cracking
- Dictionary attacks
- Brute force on weak hashes
- Rainbow table lookups
- Wordlist usage and customization

**Resources:**

- Hashcat: <https://hashcat.net> (GPU-accelerated cracking)
- John the Ripper: <https://www.openwall.com/john>
- CrackStation: <https://crackstation.net> (precomputed rainbows)
- SecLists wordlists: <https://github.com/danielmiessler/SecLists>
- Hash-identifier tools

**Starting tips:**

- Identify the hash type first (MD5 vs SHA, etc.)
- Use online cracking services for quick wins (they often have rainbow tables)
- Weak passwords crack fast; complex ones take time
- Wordlists matter—smaller targeted lists can beat huge generic ones
- Save common passwords and patterns you find; NCL reuses them

---

## Forensics

Forensics challenges give you disk images, files, or evidence artifacts and ask you to extract information, find deleted files, recover data, or identify what happened. Autopsy is a popular open-source tool used by forensic investigators and incident responders.

**What to expect:**

- Disk image analysis (recovery of deleted files, filesystem analysis)
- File carving and recovery
- Memory analysis and dump examination
- Timeline reconstruction
- Hidden file/data discovery
- Evidence correlation

**Resources:**

- Autopsy: <https://www.sleuthkit.org/autopsy/> (free forensics suite)
- The Sleuth Kit (command-line forensics)
- Volatility (memory analysis)
- FTK Imager (disk imaging and analysis)
- Strings and hexdump (file examination)

**Starting tips:**

- Autopsy has a GUI—use it for disk and filesystem analysis
- Understand filesystems (NTFS, ext4) to recover deleted files
- File carving tools can recover files even if filesystem is damaged
- Timestamps are everywhere—build a timeline
- Look for artifacts: browser history, recently opened files, etc.
- Memory dumps can reveal running processes and data
- Forensics is often about thinking outside the box

---

## Log Analysis

Log analysis challenges require you to parse through system, application, and network logs to answer questions about what happened, when it happened, and who did it. Log Analysis is typically vague, so asking for clarification tickets is common—accuracy matters here.

**What to expect:**

- Syslog and Windows Event Logs
- Apache/Nginx web server logs
- Application logs
- Authentication failures and successes
- Malicious activity detection
- Timeline reconstruction

**Resources:**

- `grep`, `awk`, `sed` (command-line log processing)
- Regular expressions (regex101.com)
- Log file viewers and analysis tools
- Splunk (free version available)
- ELK Stack for larger log analysis

**Starting tips:**

- Learn grep, awk, sed—they're your best friends
- Regex is powerful; invest time learning patterns
- Understand common log formats (syslog, Apache, Windows)
- Look for suspicious patterns: failed logins, unusual IPs, commands
- Timestamps matter—build a timeline
- Log analysis is mostly pattern matching + command-line skills
- Triple-check answers; ambiguity is common, so file clarification tickets

---

## Network Traffic Analysis

Network Traffic Analysis challenges give you packet captures (.pcap files) and ask you to extract information, identify attacks, or understand what's happening on the network. You'll work with tools like Wireshark to dissect protocols and answer questions.

**What to expect:**

- Wireshark packet inspection
- Protocol identification (HTTP, DNS, FTP, etc.)
- Extracting files from traffic
- Identifying suspicious connections
- Decoding encrypted traffic (if keys provided)
- Analyzing attack patterns

**Resources:**

- Wireshark: <https://www.wireshark.org> (packet analysis)
- tcpdump (command-line packet capture)
- NetworkMiner (automated packet analysis)
- PCAP files from SecLists or TCPDump
- Protocol RFCs (HTTP, DNS, etc.)

**Starting tips:**

- Learn Wireshark—filter by protocol, IP, port
- Understand common protocols (HTTP, DNS, FTP, SSH)
- Follow TCP streams to see conversations
- Export objects (files, images) from traffic
- Look for unusual patterns: beaconing, exfiltration, etc.
- NTA is often vague too—clarification tickets help
- Learn common attack signatures in traffic

---

## Scanning & Reconnaissance

Scanning challenges involve identifying open ports, services, versions, and vulnerabilities on target systems. This is the "before you exploit" phase—gathering intelligence on the target.

**What to expect:**

- Port scanning (nmap)
- Service identification and version detection
- OS fingerprinting
- Vulnerability scanning
- Banner grabbing
- Finding exposed services

**Resources:**

- Nmap: <https://nmap.org> (port and service scanning)
- Nessus (vulnerability scanner)
- OpenVAS (open-source Nessus alternative)
- masscan (fast port scanning)
- Metasploit auxiliary modules

**Starting tips:**

- Master nmap—learn common flags (`-sV`, `-O`, `-A`, `-p`)
- Identify services and their default ports
- Version detection helps find known vulnerabilities
- OS fingerprinting narrows down attack surface
- Aggressive scanning gets caught; be thoughtful
- Common services matter—memorize default ports

---

## Web Application Exploitation

Web challenges focus on identifying and exploiting vulnerabilities in web applications. NCL only does blind web exploitation (you don't get source code), so you're working from trial-and-error and understanding common patterns.

**What to expect:**

- SQL Injection (time-based, error-based, union-based)
- Cross-Site Scripting (XSS) — Stored & Reflected
- Authentication bypasses
- Directory traversal
- Command injection
- CSRF and session issues

**Resources:**

- OWASP Top 10: <https://owasp.org/www-project-top-ten/>
- PortSwigger Web Security Academy (free labs)
- Burp Suite Community Edition
- SQLMap for SQL injection
- OWASP Juice Shop (vulnerable app for practice)

**Starting tips:**

- Learn the OWASP Top 10 vulnerabilities inside and out
- Practice on OWASP Juice Shop before the competition
- Use Burp Suite to intercept and modify requests
- Test every input field (forms, URLs, headers)
- SQL injection is common—learn time-based and union-based techniques
- Blind testing is guess-and-check; keep notes on what worked

---

## Wireless Access Exploitation

*Category seen in NCL Spring 2026. Details and resources will be added as we learn more.*

---

## Enumeration & Exploitation

This is the aggressive offense category. Enumeration and Exploitation historically involved basic reverse engineering, but in recent years has expanded to include more complicated reverse engineering and even real exploitation problems (like mainframe hacking or buffer overflow challenges). Challenges range from straightforward to complex.

**What to expect:**

- Binary reverse engineering
- Exploitation (buffer overflows, format strings, ROP chains)
- Mainframe or legacy system hacking
- Custom protocol analysis
- Privilege escalation
- Shellcode writing (at higher difficulty)

**Resources:**

- Ghidra: <https://ghidra-sre.org> (reverse engineering)
- IDA Pro (commercial, very powerful)
- Radare2 (command-line reverse engineering)
- GDB (GNU Debugger)
- Pwntools (Python library for exploit development)
- Exploit-DB for known CVEs

**Starting tips:**

- Start with static analysis—what does the binary do when you read it?
- GDB lets you step through execution
- Ghidra decompiles binaries to pseudo-C
- Strings command extracts readable text
- Dynamic analysis: run and observe behavior
- Reversing is as much detective work as technical skill
- Some challenges are meant to be solved with guesswork
