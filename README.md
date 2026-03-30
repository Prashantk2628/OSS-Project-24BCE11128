Open Source Software Audit & Administration Toolkit

Name: Prashant Kumar

Registration Number: 24BCE11128

Chosen Software: Apache HTTP Server

📖 Project Details

This project is a suite of Bash scripts designed to automate the auditing, inspection, and analysis of an Open Source Software (OSS) environment, specifically focusing on the Apache HTTP Server. The toolkit provides automated system reporting, package verification, security permission auditing, log analysis, and an interactive OSS manifesto generator.

🎯 Problem Statement

Managing and auditing web servers in a Linux environment often requires system administrators to manually check system identities, verify package installations, inspect critical directory permissions for vulnerabilities, and parse extensive log files for errors (like 404s). Performing these tasks manually is time-consuming, prone to human error, and lacks standardized reporting.

💡 How We Solved It

We solved this by developing a modular, automated Bash scripting toolkit. Instead of running dozens of individual Linux commands, an administrator can execute these five distinct scripts to instantly gather system health metrics, verify Apache dependencies, audit web directory security permissions, and dynamically parse server logs for specific incident keywords.

🏗️ Architecture and Working of the Code

The project follows a modular architecture, divided into five standalone shell scripts, each handling a specific domain of system administration:

script1.sh (System Identity Report): * Working: Uses core Linux commands (uname, whoami, uptime, cat /etc/os-release) to fetch the current environment variables. It formats this data into a clean, human-readable "Open Source Audit Report" highlighting the kernel, OS distribution, and uptime while emphasizing GNU GPL freedoms.

script2.sh (Apache Package Inspector): * Working: Acts as a dependency checker. It uses the Debian package manager (dpkg) to verify if apache2 is installed. If found, it extracts the version and description. It also features a switch-case block providing contextual historical notes about popular OSS packages.

script3.sh (Apache Directory Auditor): * Working: An array iterates over critical Apache directories (/etc/apache2, /var/www/html, /var/log/apache2). It uses ls -ld combined with awk to extract specific permission bits, owners, and groups, alongside du -sh to calculate directory sizes, ensuring web server files are secure.

script4.sh (Apache Log Analyzer): * Working: Takes two command-line arguments: a log file path and a search keyword (defaults to "404"). It uses a while read loop and grep -iq to scan the Apache access log line-by-line, counting incidents and printing the last 3 occurrences for quick debugging.

script5.sh (Personalized OSS Manifesto): * Working: An interactive script utilizing the read command to accept user inputs about their favorite tools and beliefs regarding software freedom. It dynamically writes these inputs into a uniquely named text file (manifesto_<username>.txt) and outputs the final personalized manifesto.

🚀 How to Run the Project

Prerequisites

A Linux-based Operating System (Ubuntu/Debian recommended for dpkg compatibility).

Bash shell environment.

Apache installed (optional but required for logs and directories to exist).

Step-by-Step Instructions

1. Make the scripts executable:
Before running the scripts, you must grant them execution permissions. Open your terminal in the directory containing the scripts and run:

chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh



2. Execute Script 1: System Identity Report

./script1.sh



(Note: You can edit the script to replace [Your Name] with your actual name if desired).

3. Execute Script 2: Apache Package Inspector

./script2.sh



4. Execute Script 3: Apache Directory Auditor

./script3.sh



(Note: Depending on your system configuration, you might need to run this with sudo ./script3.sh to read sizes of restricted system directories).

5. Execute Script 4: Apache Log Analyzer
This script requires you to pass the path to your Apache log file. You can also pass an optional keyword (defaults to 404).

# Basic run (searches for 404 errors)
sudo ./script4.sh /var/log/apache2/access.log

# Custom keyword run (e.g., searching for "500" internal server errors)
sudo ./script4.sh /var/log/apache2/access.log 500



6. Execute Script 5: Personalized OSS Manifesto

./script5.sh



Follow the on-screen prompts to type in your answers. It will automatically generate and display your custom text file!