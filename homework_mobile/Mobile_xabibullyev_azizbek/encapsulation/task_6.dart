import 'dart:io';

class BankAccount {
  double _balance;
  final String _accountNumber;

  BankAccount(this._accountNumber, this._balance);

  String get accountNumber => _accountNumber;

  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print(
          "Pul qo'shish muvaffaqiyatli yakunlandi. Yangi balans: \$ $_balance");
    } else {
      print("Noto'g'ri qiymat. Pul qo'shish amalga oshmadi.");
    }
  }

  set withdraw(double amount) {
    if (amount > 0 && _balance >= amount) {
      _balance -= amount;
      print(
          'Pul yechib olish muvaffaqiyatli yankunlandi. Yangi balans: \$ $_balance');
    } else {
      print(
          "Noto'g'ri miqdor yoki mablag' yetarli emas. Pul yechib olishda xatolik.");
    }
  }

  double get balance => _balance;
}

void main() {
  BankAccount myAccount = BankAccount('123456789', 1000.0);
  print('Hisob raqami: ${myAccount.accountNumber}');
  print('Joriy Balans: ${myAccount.balance}');
  print("Kartaga qo'shiladigan summani kiriting: ");
  double new_depo = double.parse(stdin.readLineSync()!);
  print("Kartadan yechiladigan summani kiriting: ");
  double new_withdraw = double.parse(stdin.readLineSync()!);
  myAccount.deposit = new_depo;
  myAccount.withdraw = new_withdraw;
  print('Joriy Balans: ${myAccount.balance}');
}
