# Battlefield 2042 Season 6 Steam Fixer

This repository contains a PowerShell script and a Batch file to automate the uninstallation of "EA App" from a Windows machine. After uninstallation, it prompts the user to boot Battlefield 2042.

## Table of Contents
1. [Requirements](#requirements)
2. [Installation](#installation)
3. [Usage](#usage)
4. [How it Works](#how-it-works)

## Requirements

- Windows machine with PowerShell installed.
- Administrative privileges for uninstalling software.

## Installation

1. **Download the Repository**: Clone this repository or download it as a ZIP file.
2. **Unzip Files**: If downloaded as a ZIP, extract it to your preferred location.

## Usage

### Using the Batch File

1. Double-click on `RunUninstallEAApp.bat` to run the program. If administrative privileges are not already provided, the script will automatically request them. This will then execute the included PowerShell script.

**Note**: Running the Batch file will require administrative privileges.

## How it Works

1. **Search for EA App**: The PowerShell script first searches for an installed program named "EA App".
2. **Uninstall**: If found, the script proceeds to uninstall it.
3. **Prompt to Boot Battlefield 2042**: After uninstalling, the script outputs a message asking the user to boot Battlefield 2042.

For more details, check the comments within the PowerShell script.
