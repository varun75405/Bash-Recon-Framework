#!/bin/bash

# Function to display menu
display_menu() {
    echo "====================================="
    echo "         Nikto Scan Automation      "
    echo "====================================="
    echo "1) Basic Scan"
    echo "2) Full Scan (Verbose)"
    echo "3) Custom Scan with Additional Options"
    echo "4) Exit"
    echo "====================================="
}

# Prompt the user for the target URL
read -p "Enter the target URL (e.g., http://example.com): " target

# Validate input
if [[ -z "$target" ]]; then
    echo "Error: No target URL provided."
    exit 1
fi

# Display the menu and get the user's choice
display_menu
read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        echo "Running Basic Nikto Scan on $target..."
        nikto -h "$target" -o nikto_basic_result.txt
        echo "Scan completed. Results saved in nikto_basic_result.txt."
        ;;
    2)
        echo "Running Full Nikto Scan (Verbose) on $target..."
        nikto -h "$target" -Display V -o nikto_full_result.txt
        echo "Scan completed. Results saved in nikto_full_result.txt."
        ;;
    3)
        read -p "Enter additional Nikto options (e.g., -Format csv -o custom_output.csv): " custom_options
        echo "Running Custom Nikto Scan on $target with options: $custom_options..."
        nikto -h "$target" $custom_options
        echo "Scan completed."
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
