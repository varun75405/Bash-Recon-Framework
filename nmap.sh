#!/bin/bash

while true; do
    echo "Hello.... to tool Nmap!"
    echo "Nmap is an open-source tool for network reconnaissance, port scanning, service detection, OS fingerprinting, and vulnerability assessment."
    echo "Mentioning these lines are typed by Soms, not derived from ChatGPT."
    echo "------------------------------------------------------------ also done by Soms"
    echo "1. Reconnaissance: Find live hosts in a network"
    echo "2. Scanning & Enumeration: Identify open ports & services"
    echo "3. OS & Service Detection: Detect running OS & applications"
    echo "4. Vulnerability Assessment: Scan for known weaknesses"
    echo "5. Exit"
    echo "------------------------------------------------------------ also done by Soms"
    echo "Choose any one option given above:"
    read option

    case $option in 
        1) 
            echo "Enter target:"
            read target
            nmap -sn $target -oN nmap_result.txt > /dev/null 2>&1
            echo "Scanning completed. Results saved in nmap_result.txt."
            ;;
            
        2) 
            echo "Enter target:"
            read target
            echo "Enter port number:"
            read p
            nmap -p $p $target -oN nmap_result.txt > /dev/null 2>&1
            echo "Scanning completed. Results saved in nmap_result.txt."
            ;;
            
        3) 
            echo "Enter target:"
            read target
            nmap -A $target -oN nmap_result.txt > /dev/null 2>&1
            echo "Scanning completed. Results saved in nmap_result.txt."
            ;;
            
        4) 
            echo "Enter the target IP or domain:"
            read target 
            echo "Running Nmap vulnerability scan on $target..."
            nmap --script vuln $target -oN vuln_scan.txt > /dev/null 2>&1
            echo "Scan completed. Results saved in vuln_scan.txt."
            ;;

        5) 
            echo "It's time to leave. Bye........."
            exit 0
            ;;
            
        *) 
            echo "Use your eye to select the correct option."
            ;;
    esac
done

