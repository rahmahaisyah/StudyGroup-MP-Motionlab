My Bank is a simple command-line banking application built using Dart. This application allows users to interact with a bank account to perform basic banking operations such as checking balance, depositing money, and withdrawing money.

# Features
- **Check Balance**: View your current account balance.
- **Deposit Money**: Deposit an amount of money into your account.
- **Withdraw Money**: Withdraw an amount from your account.
- **Exit**: Exit the application.

### When you run the application, it will display the following menu options:
```
==== Welcome to My Bank ====
What do you want to do?
1. Check balance
2. Deposit Money
3. Withdraw Money
4. Exit
```
### Based on the user's input, the program will execute the corresponding action. For example, after checking the balance, the output will look like:
```
Your choice: 1
------ Balance Information ------
Date            Time
26/11/2024      22:32:55

Balance         : Rp. 50000.00
---------------------------------
```
### Folder Structure
- **`bin/`**: This folder serves as the location for the main entry point of the application, which executes the program. In this project, `main.dart` is located in this folder and is responsible for running the application.

- **`lib/`**: This folder typically contains files that store the core logic or main classes of the application. In this project, `bank_account.dart` is located here and contains the primary logic for managing the bank account, such as handling balance, deposits, withdrawals,
