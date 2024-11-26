class BankAccount {
  double _balance;

  BankAccount(this._balance);

  double get balance => _balance;

  void deposit(double amount) {
    if (amount <= 0) {
      print('Invalid amount. Must greater than 0');
    } else {
      _balance += amount;
      print('Deposit successful. Balance update!');
      checkBalance();
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Invalid amount. Must greater than 0');
    } else if (amount > _balance) {
      print('Invalid amount. Insufficient balance');
    } else {
      _balance -= amount;
      print('Withdraw successful. Balance update!');
      checkBalance();
    }
  }

  void checkBalance() {
    DateTime now = DateTime.now();
    String formattedDate = '${now.day}/${now.month}/${now.year}';
    String formattedTime = '${now.hour}:${now.minute}:${now.second}';
    print('------ Balance Information ------');
    print('Date\t\tTime');
    print('$formattedDate\t$formattedTime\n');
    print('Balance\t\t: Rp. ${_balance.toStringAsFixed(2)}');
    print('---------------------------------');
  }
}
