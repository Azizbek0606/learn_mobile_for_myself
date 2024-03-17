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

void main() {
  SaveAccount new_account = SaveAccount("azizbek0606", "parol.5474");
  ChangeAccount update_account =
      ChangeAccount("azizbek_0606", "yangiparol.5474");
  new_account.save_account();
  update_account.change_account();
}
