import 'dart:io';
import 'package:my_bank/bank_account.dart';

void main() {
  BankAccount account = BankAccount(50000);
  print('==== Welcome to My Bank ====');
  do {
    print('\nWhat do you want to do?');
    print('1. Check balance');
    print('2. Deposit Money');
    print('3. Withdraw Money');
    print('5. Exit');
    stdout.write("\nYour choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        account.checkBalance();
        break;
      case 2:
        stdout.write('Enter the amount to deposit: ');
        double depositAmount = double.parse(stdin.readLineSync()!);
        account.deposit(depositAmount);
        break;
      case 3:
        stdout.write('Enter the amount to withdraw: ');
        double withdrawAmount = double.parse(stdin.readLineSync()!);
        account.withdraw(withdrawAmount);
        break;
      case 4:
        print('Thank you for using My Bank!');
        return;
      default:
        print('Invalid choice. Please try again.');
        break;
    }
  } while (true);
}
