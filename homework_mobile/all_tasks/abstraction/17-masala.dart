abstract class SaveOrChange {
  void change_acc();
  void save_acc();
}

class SaveAccount extends SaveOrChange {
  @override
  void save_acc() {
    print("Akkaunt muvofaqqiyatli saqlandi");
  }

  @override
  void change_acc() {
    print("Bu operatsiya ushbu akkaunt turi uchun amalga oshirilmaydi");
  }
}

class ChangeAccount extends SaveOrChange {
  @override
  void change_acc() {
    print("Akkaunt muvofaqqiyatli o'zgartirildi");
  }

  @override
  void save_acc() {
    print("Bu operatsiya ushbu akkaunt turi uchun amalga oshirilmaydi");
  }
}

void main() {
  SaveAccount saveAccount = SaveAccount();
  ChangeAccount changeAccount = ChangeAccount();

  saveAccount.save_acc();
  changeAccount.change_acc();
}
