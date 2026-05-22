#!/bin/bash

function menu() {
    echo "====================================="
    echo "    DNSRecon Scan Automation Tool    "
    echo "====================================="
    echo "1) Basic DNS Enumeration"
    echo "2) Zone Transfer Test (AXFR)"
    echo "3) Reverse Lookup (IP Range)"
    echo "4) Wildcard Subdomain Detection"
    echo "5) Exit"
    echo "====================================="
}

read -p "Enter the target domain: " target

menu

read -p "Select any Choice: " choice

case $choice in
    1)
        echo "Running Basic DNS Enumeration.."
        dnsrecon -d "$target"
        ;;
    2)
        echo "Running Zone Transfer Test.."
        dnsrecon -d "$target" -t axfr
        ;;
    3)
        echo "Running Reverse Lookup.."
        read -p "Enter IP range (e.g., 192.168.1.0/24): " ip_range
        dnsrecon -r "$ip_range"
        ;;
    4)
        echo "Checking for Wildcard DNS.."
        dnsrecon -d "$target" -t wbrt
        ;;
    5)
        echo "Exiting.."
        exit 0
        ;;
    *)
        echo "Invalid option given"
        exit 1
        ;;
esac
