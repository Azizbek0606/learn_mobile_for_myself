class BankAccount {
  double balance = 0;

  void deposit(double amount) {
    balance += amount;
    print('Deposited \$${amount}, Current balance: \$${balance}');
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print('Withdrawn \$${amount}, Current balance: \$${balance}');
    } else {
      print('Insufficient funds');
    }
  }
}

void main() {
  BankAccount account = BankAccount();
  account.deposit(1000);
  account.withdraw(500);
  account.withdraw(700);
}
