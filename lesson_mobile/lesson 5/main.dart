// inkapsulatsiy
// class ichidagi malumotlar har gal public holatda bo'ladi
// private qilish uchun pastgi chiziqcha ishlatiladi
// private qilisdan asosiy maqsad logikani buzilib ketshini oldini oladi / mantiqni himoyalaydi
// class ichidagi o'zgaruvchilar private bo'lsa getter hamda setter metodlari orqali olinadi va qiymt o'zgartirildi
// class ichidgi o'zgaruvchialrni private qilish sintaksisi quyidagicha



// class MyClass {
//   String _name; // private qilib o'zgaruvchi yozildi
//   String _surname;

//   MyClass(this._name, this._surname);

//   String get name => _name;
// }

// void main() {
//   MyClass createSecondClass = MyClass("Azizbek", "Xabibullayev");
//   print(createSecondClass.name);
// }





// My task 1

class BankAccount {
  double _balance;
  final String _accountNumber;

  BankAccount(this._accountNumber, this._balance);

  String get accountNumber => _accountNumber;

  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Pul qo'shish muvaffaqiyatli yakunlandi. Yangi balans: \$ $_balance");
    } else {
      print("Noto'g'ri qiymat. Pul qo'shish amalga oshmadi.");
    }
  }
  set withdraw(double amount) {
    if (amount > 0 && _balance >= amount) {
      _balance -= amount;
      print('Pul yechib olish muvaffaqiyatli yankunlandi. Yangi balans: \$ $_balance');
    } else {
      print("Noto'g'ri miqdor yoki mablag' yetarli emas. Pul yechib olishda xatolik.");
    }
  }

  double get balance => _balance;
}

void main() {
  BankAccount myAccount = BankAccount('123456789', 1000.0);
  print('Hisob raqami: ${myAccount.accountNumber}');
  myAccount.deposit = 500.0;
  myAccount.withdraw = 200.0;
  print('Joriy Balans: \$${myAccount.balance}');
}