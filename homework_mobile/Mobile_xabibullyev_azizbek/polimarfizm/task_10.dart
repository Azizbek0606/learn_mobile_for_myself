class BankAccount {
  void save_account() {}

  void change_account() {}
}

class SaveAccount extends BankAccount {
  String username;
  String password;
  SaveAccount(this.username, this.password);
  @override
  void save_account() {
    print("saqlandi");
  }
}

class ChangeAccount extends BankAccount {
  String new_username;
  String new_password;
  ChangeAccount(this.new_username, this.new_password);
  @override
  void change_account() {
    print("o'zgartirildi");
  }
}
