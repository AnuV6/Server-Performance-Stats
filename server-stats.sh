#!/bin/bash

# Function to display total CPU usage
cpu_usage() {
    echo "=== CPU Usage ==="
    top -bn1 | grep "Cpu(s)" | \
        awk '{printf "Total CPU Usage: %.2f%%\n", 100 - $8}'
    echo
}

# Function to display memory usage
memory_usage() {
    echo "=== Memory Usage ==="
    free -m | awk '
    NR==2 {
        printf "Used: %s MB\nFree: %s MB\nUsage: %.2f%%\n", $3, $4, $3*100/($3+$4)
    }'
    echo
}

# Function to display disk usage
disk_usage() {
    echo "=== Disk Usage ==="
    df -h --total | grep "total" | \
        awk '{printf "Used: %s\nFree: %s\nUsage: %s\n", $3, $4, $5}'
    echo
}

# Function to display top 5 processes by CPU usage
top_cpu_processes() {
    echo "=== Top 5 Processes by CPU Usage ==="
    ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head -n 6
    echo
}

# Function to display top 5 processes by memory usage
top_memory_processes() {
    echo "=== Top 5 Processes by Memory Usage ==="
    ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 6
    echo
}

# Stretch Goal: Additional stats
additional_stats() {
    echo "=== Additional Stats ==="
    echo "OS Version:"
    lsb_release -d | awk -F: '{print $2}'
    echo
    echo "Uptime:"
    uptime -p
    echo
    echo "Load Average:"
    uptime | awk -F'load average:' '{print $2}'
    echo
    echo "Logged In Users:"
    who | wc -l
    echo
    echo "Failed Login Attempts:"
    grep "Failed password" /var/log/auth.log 2>/dev/null | wc -l || echo "Log not accessible"
    echo
}

# Main script execution
cpu_usage
memory_usage
disk_usage
top_cpu_processes
top_memory_processes
additional_stats
