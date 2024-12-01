# Server-Performance-Stats

**Shell script to monitor server performance stats.**

This project provides a lightweight and straightforward shell script, `server-stats.sh`, designed to analyze and display key performance metrics of any Linux server.

[Project Reference](https://roadmap.sh/projects/server-stats)

---

## Features

### The script provides the following server performance metrics:

- **CPU Usage**:
  - Displays total CPU usage as a percentage.

- **Memory Usage**:
  - Reports used and free memory in MB.
  - Displays memory usage percentage.

- **Disk Usage**:
  - Summarizes total used and free disk space.
  - Shows disk usage percentage.

- **Top 5 Processes**:
  - Ranked by CPU usage.
  - Ranked by memory usage.

### Stretch Features:
- **OS Version**:
  - Displays the operating system version.
  
- **Uptime**:
  - Displays the total uptime in a human-readable format.

- **Load Average**:
  - Reports the server's load average.

- **Logged-in Users**:
  - Shows the number of users currently logged into the server.

- **Failed Login Attempts**:
  - Displays the count of failed SSH login attempts from the authentication logs.

---

## Usage

1. Clone or download the repository:
   ```bash
   git clone https://github.com/AnuV6/Server-Performance-Stats.git
   cd Server-Performance-Stats
   ```

2. Make the script executable:
   ```bash
   chmod +x server-stats.sh
   ```

3. Run the script:
   ```bash
   ./server-stats.sh
   ```

