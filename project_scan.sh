#!/usr/bin/bash

execute_tool() {
    tool_script="$1"
    if [[ -x "$tool_script" ]]; then
        ./"$tool_script"
    else
        echo "Error: $tool_script not found or not executable!"
    fi
}

while :; do
    echo "=============================="
    echo "   Automated Scanner v1.0     "
    echo "=============================="

    scanner_tools=("Nmap" "Nikto" "theHarvester" "Subfinder" "Dirb" "DNSRecon" "Exit")

    echo "Select a tool:"
    for index in "${!scanner_tools[@]}"; do
        echo "$((index+1)). ${scanner_tools[$index]}"
    done

    read -p "Enter your choice (1-${#scanner_tools[@]}): " user_choice

    case $user_choice in
        1) execute_tool "nmap.sh" ;;
        2) execute_tool "nikto.sh" ;;
        3) execute_tool "theHarvester_script.sh" ;;
        4) execute_tool "subf.sh" ;;
        5) execute_tool "dirb.sh" ;;
        6) execute_tool "dnsrecon.sh" ;;
        7) echo "Goodbye!"; exit 0 ;;
        *) echo "Invalid choice, please try again." ;;
    esac

    echo ""
done
