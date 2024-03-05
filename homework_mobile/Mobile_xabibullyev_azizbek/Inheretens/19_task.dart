class BankAccount {
  void deposit() {
    print("Deposit kiritildi");
  }

  void get_balance() {
    print("Pul olindi");
  }
}

class SavingsAccount extends BankAccount {}

class ChekingAccount extends BankAccount {}

void main() {
  SavingsAccount savingsAccount = SavingsAccount();
  ChekingAccount chekingAccount = ChekingAccount();
  savingsAccount.deposit();
  savingsAccount.get_balance();
  
  chekingAccount.deposit();
  chekingAccount.get_balance();
}
