class BankAccount {
  int card_num;
  double balance;

  BankAccount(this.card_num, this.balance);
}

class SavingAccount extends BankAccount {
  SavingAccount(int card_num, double balance)
      : super(card_num, balance);
}

class ChechkingAccount extends BankAccount {
  ChechkingAccount(
    int card_num,
    double balance,
  ) : super(card_num, balance);
}

void main() {
  SavingAccount savingAccount = SavingAccount(12121, 100.000);
  ChechkingAccount chechkingAccount =
      ChechkingAccount(12151, 255.000);

  print("xisob raqam: ${savingAccount.card_num}");
  print("balans: ${savingAccount.balance}");

  print("xisob raqam: ${chechkingAccount.card_num}");
  print("balans: ${chechkingAccount.balance}");
}
