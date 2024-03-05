class BankAccount {
  void Deposit() {
    print("Deposit Kiritildi");
  }

  void WithDraw() {
    print("Pul chiqarib olindi");
  }

  double balance;

  BankAccount(this.balance);
}

class SavingsAccount extends BankAccount {
  SavingsAccount(double balance) : super(balance);
}

class CheckingaAccount extends BankAccount {
  CheckingaAccount(double balance) : super(balance);
}

void main() {
  SavingsAccount savingsAccount = SavingsAccount(200.000);
  CheckingaAccount checkingaAccount = CheckingaAccount(3000.000);

  savingsAccount.Deposit();
  checkingaAccount.WithDraw();
}
