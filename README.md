# Bash-Recon-Framework

### Automated Bash-Based Reconnaissance and Vulnerability Scanning Framework

---

## Overview

Bash-Recon-Framework is a cybersecurity automation project designed to streamline reconnaissance and information gathering tasks using Bash scripting.

The framework integrates multiple penetration testing and reconnaissance tools into a centralized menu-driven workflow for efficient scanning and enumeration.

This project focuses on automating repetitive reconnaissance operations commonly performed during the initial phases of penetration testing and security assessment.

---

## Features

- Menu-driven reconnaissance automation
- Automated Nmap scanning
- Nikto web vulnerability scanning
- Dirb directory enumeration
- DNS reconnaissance
- Subdomain enumeration
- theHarvester integration
- Automated scan execution
- Organized reconnaissance workflow
- Result generation and logging

---

## Integrated Tools

### Nmap
Used for:
- Host discovery
- Port scanning
- Service enumeration
- OS detection

### Nikto
Used for:
- Web server vulnerability scanning
- Misconfiguration detection
- Dangerous file identification

### Dirb
Used for:
- Hidden directory discovery
- Web content enumeration

### DNSRecon
Used for:
- DNS information gathering
- Zone transfer attempts
- Subdomain enumeration

### theHarvester
Used for:
- Email harvesting
- OSINT collection
- Public information gathering

---

## Project Structure

```text
Bash-Recon-Framework/
│
├── dirb.sh
├── dnsrecon.sh
├── nikto.sh
├── nmap.sh
├── project_scan.sh
├── subf.sh
├── theHarvester_script.sh
│
├── README.md
├── LICENSE
└── .gitignore
```

---

## Main Script

The primary automation controller is:

```bash
project_scan.sh
```

This script provides the menu-driven interface that integrates all reconnaissance modules.

---

## Installation

Clone the repository:

```bash
git clone https://github.com/varun75405/Bash-Recon-Framework.git
cd Bash-Recon-Framework
```

Install required tools:

```bash
sudo apt update

sudo apt install nmap
sudo apt install nikto
sudo apt install dirb
sudo apt install dnsrecon

pip install theHarvester
```

---

## Usage

Run the main automation script:

```bash
bash project_scan.sh
```

---

## Workflow

The framework follows this workflow:

1. Target input
2. Reconnaissance module selection
3. Automated tool execution
4. Information gathering
5. Vulnerability scanning
6. Result generation

---

## Development Environment

This project was developed and tested on:

- Kali Linux
- Bash Shell
- Linux-based penetration testing environment

---

## Technologies Used

- Bash Scripting
- Kali Linux
- Linux
- Nmap
- Nikto
- Dirb
- DNSRecon
- theHarvester

---

## Objectives

This project was developed to:

- Automate reconnaissance workflows
- Reduce repetitive scanning tasks
- Improve penetration testing efficiency
- Learn Bash scripting automation
- Integrate multiple security tools
- Explore cybersecurity enumeration techniques

---

## Cybersecurity Concepts Covered

- Information Gathering
- OSINT
- Enumeration
- Vulnerability Assessment
- Web Reconnaissance
- Network Scanning
- DNS Enumeration
- Automation in Cybersecurity

---

## Future Improvements

Possible future enhancements include:

- Parallel scan execution
- Colored terminal interface
- Result export automation
- Logging improvements
- JSON/HTML report generation
- Python integration
- Advanced subdomain enumeration
- Port scan optimization

---

## Platform

Recommended Platform:

- Kali Linux

---

## Author

Varun Bonthala  
B.Tech Computer Science and Engineering  
Cybersecurity Enthusiast
