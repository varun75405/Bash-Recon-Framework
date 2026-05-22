#!/bin/bash

display_menu() {
    echo "Choose the type of subdomain scan:"
    echo "1) Basic Scan"
    echo "2) All Sources Scan"
    echo "3) Custom Scan with Resolvers"
    echo "4) Exit"
}

read -p "Enter the target domain (e.g., example.com): " target

if [[ -z "$target" ]]; then
    echo "Error: No target domain provided."
    exit 1
fi

display_menu
read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        echo "Running Basic Scan..."
        subfinder -d "$target" -o subfinder_result.txt
        echo "Scan completed. Results saved in subfinder_result.txt."
        ;;
        
    2)
        echo "Running All Sources Scan..."
        subfinder -d "$target" -all -o subfinder_result.txt
        echo "Scan completed. Results saved in subfinder_result.txt."
        ;;
        
    3)
        read -p "Enter your custom resolvers path (optional): " resolvers
        if [[ -n "$resolvers" ]]; then
            echo "Running Custom Scan with custom resolvers..."
            subfinder -d "$target" -r "$resolvers" -o subfinder_result.txt
        else
            echo "Running Custom Scan without custom resolvers..."
            subfinder -d "$target" -o subfinder_result.txt
        fi
        echo "Scan completed. Results saved in subfinder_result.txt."
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
