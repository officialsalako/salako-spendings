# Spending Tracker Script

## Overview
The **Spending Tracker Script** is a simple Bash script designed to help users keep track of their daily expenses. It provides an easy-to-use command-line interface for adding, viewing, and managing spending records. All data is stored in a plain text file for simplicity.

## Features
- **Add Expenses**: Log spending details such as the date, narration/description, and amount.
- **View Expenses**: Display a list of all recorded expenses in an organized format.
- **User-Friendly Menu**: A menu-driven interface that allows users to interact with the script.

## How It Works
1. **Add Expense**:
   - You will be prompted to enter the following:
     - **Date** (in DD-MM-YYYY format)
     - **Narration/Description**
     - **Amount** (in NGN)
   - The entry is saved to `spendings.txt`.

2. **View Expenses**:
   - Displays all recorded expenses from the `spendings.txt` file.
   - If no expenses are recorded, it notifies the user.

3. **Exit**:
   - Close the application gracefully.

## Prerequisites
- **Operating System**: Linux or any Unix-like OS (e.g., Ubuntu, macOS).
- **Shell**: Bash.

## Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/officialsalako/salako-spendings.git
   cd spending-tracker
