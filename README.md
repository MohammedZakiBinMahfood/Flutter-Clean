Flutter Clean

Automatically find and clean all Flutter projects on your machine with a single command.

Overview

Flutter Clean is a simple utility script that scans your system for Flutter projects ("pubspec.yaml") and automatically runs:

flutter clean

for every detected project.

Supported Platforms

- Windows (PowerShell)
- macOS (Bash/Zsh)
- Linux (Bash)

Project Structure

scripts/
├── flutter_clean_all.ps1
├── flutter_clean_all_macos.sh
└── flutter_clean_all_linux.sh

Usage

Windows

.\flutter_clean_all.ps1

macOS

chmod +x flutter_clean_all_macos.sh
./flutter_clean_all_macos.sh

Linux

chmod +x flutter_clean_all_linux.sh
./flutter_clean_all_linux.sh

What It Does

1. Searches for all "pubspec.yaml" files.
2. Detects Flutter project directories.
3. Runs "flutter clean" for each project.
4. Displays progress in the terminal.

Requirements

- Flutter SDK installed and available in your PATH.
- Permission to access the directories being scanned.

Notes

- The script only removes Flutter build artifacts and cache files.
- Your source code and project files are not modified.
- Scanning large drives may take some time.

Example Output

Searching for Flutter projects...

Cleaning: /Users/user/projects/app1
Done.

Cleaning: /Users/user/projects/app2
Done.

Finished.

License

MIT License
