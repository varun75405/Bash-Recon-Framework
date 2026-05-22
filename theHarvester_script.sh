#!/bin/bash

echo -n "Enter the target domain (e.g., example.com): "
read target

if [[ -z "$target" ]]; then
    echo "Error: No target domain provided."
    exit 1
fi

echo "Target domain set to: $target"
sleep 1  # Small delay for clarity

echo "Choose the type of scan:"
echo "1) Email Search"
echo "2) Subdomain Search"
echo "3) IP Search"
echo "4) Exit"
echo -n "Enter your choice (1-4): "
read choice

case $choice in
    1)
        echo "Running Email Search on $target..."
        theHarvester -d "$target" -b google > "${target}_email_results.txt"
        echo "Results saved to ${target}_email_results.txt"
        ;;
    2)
        echo "Running Subdomain Search on $target..."
        theHarvester -d "$target" -b bing > "${target}_subdomain_results.txt"
        echo "Results saved to ${target}_subdomain_results.txt"
        ;;
    3)
        echo "Running IP Search on $target..."
        theHarvester -d "$target" -b all > "${target}_ip_results.txt"
        echo "Results saved to ${target}_ip_results.txt"
        ;;
    4)
        echo "Exiting."
        exit 0
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac


