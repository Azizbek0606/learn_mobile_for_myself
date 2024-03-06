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
  String user_name;
  SavingsAccount(double balance, this.user_name) : super(balance);
}

class CheckingaAccount extends BankAccount {
  String password;
  CheckingaAccount(double balance, this.password) : super(balance);
}

void main() {
  SavingsAccount savingsAccount = SavingsAccount(200.000, "Azizbek_0606");
  CheckingaAccount checkingaAccount = CheckingaAccount(3000.000 , "Qwert.5474");

  savingsAccount.Deposit();
  checkingaAccount.WithDraw();
}
