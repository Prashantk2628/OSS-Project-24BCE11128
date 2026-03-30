#!/bin/bash
# Script 1: System Identity Report for Apache Audit
# Purpose: Display system environment and OSS license info

# --- Variables ---
STUDENT_NAME="Prashant Kumar"
REG_NO="24BCE11128"
SOFTWARE_CHOICE="Apache HTTP Server"

# --- Data Gathering ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d '"' -f 2)
CURRENT_TIME=$(date)

# --- Display ---
echo "=========================================="
echo "      OPEN SOURCE AUDIT REPORT            "
echo "=========================================="
echo "Student: $STUDENT_NAME ($REG_NO)"
echo "Software under Audit: $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "Operating System : $DISTRO"
echo "Kernel Version   : $KERNEL"
echo "Current User     : $USER_NAME"
echo "System Uptime    : $UPTIME"
echo "Report Generated : $CURRENT_TIME"
echo "------------------------------------------"
echo "LICENSE NOTE: This system runs on the GNU GPL,"
echo "ensuring the four fundamental freedoms of OSS."
echo "=========================================="