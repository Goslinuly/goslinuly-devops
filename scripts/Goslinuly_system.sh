#!/bin/bash
# System information script - Goslinuly, Goslinuly, ID gosling

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
INFO_FILE="$SCRIPT_DIR/../Goslinuly_info.txt"

echo "=============================="
echo "Student Information"
echo "=============================="
echo
echo "Name: Goslinuly"
echo "Surname: Goslinuly"
echo "Group: Goslinuly"
echo "Student ID: gosling"
echo
echo "=============================="
echo "System Information"
echo "=============================="
echo
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date '+%Y-%m-%d %H:%M:%S')"
if [ -f /etc/os-release ]; then
    OS_NAME=$(. /etc/os-release && echo "$PRETTY_NAME")
else
    OS_NAME=$(uname -s)
fi
echo "Operating System: $OS_NAME ($(uname -s) $(uname -r))"
echo "Disk Usage: $(df -h / | awk 'NR==2 {print $3 " used of " $2 " (" $5 ")"}')"
if command -v free >/dev/null 2>&1; then
    echo "Memory Usage: $(free -h | awk '/^Mem:/ {print $3 " used of " $2}')"
else
    echo "Memory Usage: 'free' command not available"
fi
echo

if [ -f "$INFO_FILE" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
