import 'dart:io';

abstract class BankAccount {
  void deposit(int amount);
  void withdraw(int amount);
}

class BankMethod extends BankAccount {
  int balance;
  BankMethod(this.balance);

  @override
  void deposit(int amount) {
    balance += amount;
    print("Deposit successful. Current balance: \$${balance}");
  }

  @override
  void withdraw(int amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrawal successful. \$${amount} has been withdrawn.");
    } else {
      print("Insufficient funds. Unable to withdraw \$${amount}.");
    }
    print("Current balance: \$${balance}");
  }
}

void main() {
  print("Enter initial balance: ");
  int accountBalance = int.parse(stdin.readLineSync()!);
  BankMethod bankAccount = BankMethod(accountBalance);

  print("How much would you like to deposit? ");
  int depositAmount = int.parse(stdin.readLineSync()!);
  bankAccount.deposit(depositAmount);

  print("How much would you like to withdraw? ");
  int withdrawAmount = int.parse(stdin.readLineSync()!);
  bankAccount.withdraw(withdrawAmount);
}
