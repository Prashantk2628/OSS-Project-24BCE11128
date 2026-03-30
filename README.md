# Open Source Software Audit & Administration Toolkit

**Name:** Prashant Kumar  
**Registration Number:** 24BCE11128  
**Chosen Software:** Apache HTTP Server  

---

## 📖 About the Project
I put together this collection of Bash scripts to help automate some of the tedious parts of managing an Open Source environment. The main focus here is the **Apache HTTP Server**. Instead of typing out a bunch of commands one by one, this toolkit handles system reporting, checks packages, audits security permissions, digs through logs, and even creates a fun customized OSS manifesto.

## 🎯 The Problem
Let's face it: managing web servers on Linux involves a lot of repetitive manual work. System admins spend way too much time checking OS details, making sure the right packages are installed, hunting down folder permissions to avoid security risks, and staring at massive log files looking for 404 errors. Doing all this by hand is slow, boring, and it's super easy to miss something important.

## 💡 The Solution
To fix this, I created a modular toolkit using Bash. By breaking the tasks down into five specific scripts, anyone can just run them and instantly get the data they need. It grabs system health stats, verifies Apache is good to go, flags any weird web directory permissions, and parses server logs for specific issues—all automatically.

## 🏗️ Under the Hood (The Scripts)
The whole project is broken down into five standalone shell scripts. Here is exactly what each one does:

* **`script1.sh` (System Identity Report):** Grabs core system info using commands like `uname`, `whoami`, and `uptime`. It spits out a clean, readable report showing the OS, kernel version, and how long the system has been running, while giving a nod to GNU GPL freedoms.
* **`script2.sh` (Apache Package Inspector):** This is basically a dependency checker. It uses `dpkg` to see if `apache2` is actually installed on the system. If it is, it pulls the version info. I also threw in a switch-case block to show some fun historical facts about popular open-source packages.
* **`script3.sh` (Apache Directory Auditor):** Security check! It loops through important Apache folders (like `/var/www/html` and `/etc/apache2`). By combining `ls -ld`, `awk`, and `du`, it outputs the exact permissions, owners, groups, and sizes of these directories so you know your files are safe.
* **`script4.sh` (Apache Log Analyzer):** This one reads your Apache access logs. You pass it a file path and a keyword (it defaults to searching for "404" errors). It scans line-by-line using a `while` loop and `grep`, counts how many times the error happened, and prints the last three matches so you can see what went wrong recently.
* **`script5.sh` (Personalized OSS Manifesto):** A fun, interactive script. It asks you a few questions about your favorite tools and what software freedom means to you, then generates a custom text file (`manifesto_<username>.txt`) with your answers.

---

## 🚀 Getting Started

### What you need:
* A Linux environment (Ubuntu or Debian works best because of `dpkg`).
* A standard Bash shell.
* Apache HTTP Server installed (you'll need this if you want the log and directory scripts to actually find anything!).
* `git` installed so you can clone the repo.

### Step-by-Step Setup:

## 🚀 Execution Instructions

### 1. Set Permissions
Before you can run anything, you need to give the files permission to execute. Open your terminal in the folder where you downloaded the scripts and run:

chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
./script1.sh

./script2.sh

sudo ./script3.sh

sudo ./script4.sh /var/log/apache2/access.log

sudo ./script4.sh /var/log/apache2/access.log 500

./script5.sh
