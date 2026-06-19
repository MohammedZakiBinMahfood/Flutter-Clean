# Flutter-Clean
This script for clean cash for your device if macOs or windows 



Automatically find and clean all Flutter projects on your machine with a single command.



Flutter Clean All Projects

A simple script that automatically scans your system for Flutter projects ("pubspec.yaml") and runs:

flutter clean

on every detected project.

Supported Platforms

- Windows (PowerShell)
- macOS (Bash/Zsh)
- Linux (Bash)

Usage (macOS / Linux)

Make the script executable:

chmod +x flutter_clean_all.sh

Run it:

./flutter_clean_all.sh

What It Does

1. Searches for all "pubspec.yaml" files.
2. Detects Flutter project directories.
3. Runs "flutter clean" for each project.
4. Displays progress in the terminal.

Requirements

- Flutter SDK installed and available in PATH.
- Permission to access the directories being scanned.

Notes

- The script only cleans Flutter build artifacts.
- Source code and project files are not modified.
- Large disks may take some time to scan.

Example Output

Searching for Flutter projects...

Cleaning: /Users/user/projects/app1
Done.

Cleaning: /Users/user/projects/app2
Done.

Finished.
