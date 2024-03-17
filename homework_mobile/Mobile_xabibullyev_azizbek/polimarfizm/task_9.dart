class BankAccout {
  void deposit() {
    print("Deposit Kiritildi ");
  }

  void withdraw() {
    print("Pul chiqarildi");
  }
}

class Deposit extends BankAccout {
  double money;
  Deposit(this.money);
  @override
  void deposit() {
    print("Pul kiritilidi");
  }
}

class Withdraw extends BankAccout {
  double withdraw_len;
  Withdraw(this.withdraw_len);
  @override
  void withdraw() {
    print("Pul Chiqarib olindi");
  }
}

void main() {
  Deposit new_deposit = Deposit(127.02);
  Withdraw new_withdraw = Withdraw(102.45);
  new_deposit.deposit();
  new_withdraw.withdraw();
}
