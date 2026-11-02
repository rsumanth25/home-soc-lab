#!/bin/bash

# Home SOC Lab - Nmap Network Scanner

TARGET="$1"
OUTPUT_DIR="$HOME/home-soc-lab/attack-simulations/nmap-scanning"

if [ -z "$TARGET" ]; then
    echo "Usage: ./network-scan.sh <target-ip>"
    exit 1
fi

mkdir -p "$OUTPUT_DIR"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
OUTPUT_FILE="$OUTPUT_DIR/scan_$TIMESTAMP.txt"

echo "===================================="
echo "       HOME SOC LAB - NMAP SCANNER"
echo "===================================="
echo "Target: $TARGET"
echo "Started: $(date)"
echo

nmap -sV "$TARGET" -oN "$OUTPUT_FILE"

echo
echo "Scan completed."
echo "Report saved to: $OUTPUT_FILE"

