#!/usr/bin/env bash
# ----------------------------------------------------------
# scripts/sysinfo.sh
# ----------------------------------------------------------
# A simple system information script for the
# DevOps Final Assessment.
#
# It displays user, date/time, uptime, memory, CPU,
# and disk usage details.
# ----------------------------------------------------------

# Exit immediately if any command fails
set -e

echo "============================================="
echo "🖥️  System Information Report"
echo "============================================="
echo

# Current user
echo "👤 Current User:"
whoami
echo

# Current date and time
echo "📅 Date and Time:"
date
echo

# System uptime
echo "⏱️  Uptime:"
uptime -p
echo

# Memory usage
echo "💾 Memory Usage:"
free -h
echo

# CPU information
echo "🧠 CPU Information:"
lscpu | grep -E '^Model name|^CPU\(s\):|^Thread|^Core|^Socket|MHz'
echo

# Disk usage
echo "🗂️  Disk Usage:"
df -h --total | grep -E 'Filesystem|total'
echo

echo "============================================="
echo "✅ System information collected successfully!"
echo "============================================="
