class BankAccount {
  int account_number;
  String interest_rate;

  BankAccount(this.account_number, this.interest_rate);
}

class SavingsAccount extends BankAccount {
  SavingsAccount(int account_number, String interest_rate)
      : super(account_number, interest_rate);
}

class FixedDeposit extends BankAccount {
  FixedDeposit(int account_number, String interest_rate)
      : super(account_number, interest_rate);
}

void main() {
  SavingsAccount savingsAccount = SavingsAccount(9874026505230541, "12%");
  FixedDeposit fixedDeposit = FixedDeposit(9630036974100258, "12%");

  print(savingsAccount.account_number);
  print(savingsAccount.interest_rate);
  
  print(fixedDeposit.account_number);
  print(fixedDeposit.interest_rate);
}
