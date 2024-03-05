class BankAccout {
  void Deposit() {
    print("Deposit Kiritildi ");
  }

  void Withdraw() {
    print("Pul chiqarildi");
  }
}

class deposit extends BankAccout {
  @override
  void Deposit() {
    print("Pul kiritilidi");
  }
}

class withdraw extends BankAccout {
  @override
  void Withdraw() {
    print("Pul Chiqarib olindi");
  }
}

void main() {
  BankAccout Deposit = deposit();
  BankAccout Withdraw = withdraw();
  Deposit.Deposit();
  Withdraw.Withdraw();
}
