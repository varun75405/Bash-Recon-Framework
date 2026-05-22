#!/bin/bash

# Function to display menu
display_menu() {
    echo "Choose the type of scan:"
    echo "1) Basic Scan"
    echo "2) Aggressive Scan"
    echo "3) Custom Scan"
    echo "4) Exit"
}

# Get user input for the target URL
read -p "Enter the target URL (e.g., http://example.com): " target

# Validate input
if [[ -z "$target" ]]; then
    echo "Error: No target URL provided."
    exit 1
fi

# Display menu and get user choice
display_menu
read -p "Enter your choice (1-4): " choice

# Perform scan based on user selection
case $choice in
    1)
        echo "Running Basic Scan..."
        dirb "$target"
        ;;
    2)
        echo "Running Aggressive Scan..."
        dirb "$target" -r -f
        ;;
    3)
        read -p "Enter your custom wordlist path: " wordlist
        if [[ -f "$wordlist" ]]; then
            echo "Running Custom Scan with $wordlist..."
            dirb "$target" "$wordlist"
        else
            echo "Error: Wordlist file not found."
            exit 1
        fi
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
