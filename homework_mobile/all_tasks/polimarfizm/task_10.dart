class BankAccount {
  late int balance;

  BankAccount({int balance = 0}) {
    this.balance = balance;
  }

  void deposit(int amount) {
    balance += amount;
    print('$amount summa qo\'shildi. Jami hisobingiz: $balance summa');
  }

  void withdraw(int amount) {
    if (balance >= amount) {
      balance -= amount;
      print('$amount summa ajratildi. Jami hisobingiz: $balance summa');
    } else {
      print('Noto\'g\'ri amal! Hisobingiz yetarli emas.');
    }
  }
}

class SavingsAccount extends BankAccount {
  SavingsAccount({int balance = 0}) : super(balance: balance);

  @override
  void deposit(int amount) {
    super.deposit(amount + (amount * 0.02).toInt());
  }

  @override
  void withdraw(int amount) {
    if (amount > balance) {
      print('Noto\'g\'ri amal! Hisobingiz yetarli emas.');
    } else {
      super.withdraw(amount);
    }
  }
}

class CheckingAccount extends BankAccount {
  CheckingAccount({int balance = 0}) : super(balance: balance);

  @override
  void withdraw(int amount) {
    if (amount > balance) {
      print('Noto\'g\'ri amal! Hisobingiz yetarli emas.');
    } else {
      super.withdraw(amount);
    }
  }
}

void main() {
  var savingsAccount = SavingsAccount(balance: 1000);
  savingsAccount.deposit(500);
  savingsAccount.withdraw(2000);
  savingsAccount.withdraw(200);

  var checkingAccount = CheckingAccount(balance: 2000);
  checkingAccount.deposit(1000);
  checkingAccount.withdraw(2500);
  checkingAccount.withdraw(200);
}
