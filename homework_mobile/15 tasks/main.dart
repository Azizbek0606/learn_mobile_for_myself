// import 'dart:io';

// class SimpleClass {
//   String _name;
//   int _age;

//   SimpleClass(this._name, this._age) {
//     if (_name == "") {
//       _name = "default name";
//     }
//     if (_age > 3 || _age == '') {
//       _age = 3;
//     }
//   }

//   set name(String name) {
//     if (name == "") {
//       this._name = "default name";
//     } else {
//       this._name = name;
//     }
//   }

//   String get get_name => _name;

//   set age(int age) {
//     if (age > 3 && age == '') {
//       this._age = 3;
//     } else {
//       this._age = age;
//     }
//   }

//   int get get_age => _age;
// }

// void main() {
//   print("Ism kiriting:");
//   String input_name = stdin.readLineSync()!;
//   print("Yosh kiriting:");
//   int input_age = int.parse(stdin.readLineSync()!);
//   SimpleClass second_class = SimpleClass(input_name, input_age);
//   print("Ism: ${second_class.get_name}");
//   print("Yosh: ${second_class.get_age}");
//   second_class.age = 2;
//   second_class.name = "Azizbek";
//   print("Yangilangan ism: ${second_class.get_name}");
//   print("Yangilangan yosh: ${second_class.get_age}");
// }

// task 2

// import 'dart:io';

// class Construktor {
//   String name;
//   int age;

//   Construktor(this.name, this.age);
// }

// void main() {
//   print("Ism kiriting:");
//   String input_name = stdin.readLineSync()!;
//   print("Yosh kiriting:");
//   int input_age = int.parse(stdin.readLineSync()!);
//   Construktor second_class = Construktor(input_name, input_age);
//   print("yosh ${second_class.age}");
//   print("Ism ${second_class.name}");
// }

// Task3

// class Read_only {
//   String _text = "lorem ipsum dolor sit";
//   get get_text => _text;
// }

// void main() {
//   Read_only second_class = Read_only();
//   print("matn: ${second_class.get_text}");
// }

// task 4

// import 'dart:io';

// class Count {
//   int first;
//   int second;
//   Count(this.first, this.second);
//   int plus() {
//     return this.first + this.second;
//   }

//   int minus() {
//     return this.first - this.second;
//   }
// }

// void main() {
//   print("birinchi son");
//   int first_num = int.parse(stdin.readLineSync()!);
//   print("ikkinchi son:");
//   int second_num = int.parse(stdin.readLineSync()!);
//   Count count_class = Count(first_num, second_num);
//   print("qo'shilsa: ${count_class.plus()}");
//   print("ayrilsa: ${count_class.minus()}");
// }

//  task5
// class TemperatureConverter {
//   static double celsiusToFahrenheit(double celsius) {
//     return (celsius * 9 / 5) + 32;
//   }

//   static double fahrenheitToCelsius(double fahrenheit) {
//     return (fahrenheit - 32) * 5 / 9;
//   }
// }

// void main() {
//   double celsius = 25.0;
//   double fahrenheit = 77.0;

//   print("${celsius} °C =  ${TemperatureConverter.celsiusToFahrenheit(celsius)} °F");
//   print(
//       "${fahrenheit} °F ${TemperatureConverter.fahrenheitToCelsius(fahrenheit)} °C");
// }

// task 6

// class BankAccount {
//   double _balance;
//   final String _accountNumber;

//   BankAccount(this._accountNumber, this._balance);

//   String get accountNumber => _accountNumber;

//   set deposit(double amount) {
//     if (amount > 0) {
//       _balance += amount;
//       print(
//           "Pul qo'shish muvaffaqiyatli yakunlandi. Yangi balans: \$ $_balance");
//     } else {
//       print("Noto'g'ri qiymat. Pul qo'shish amalga oshmadi.");
//     }
//   }

//   set withdraw(double amount) {
//     if (amount > 0 && _balance >= amount) {
//       _balance -= amount;
//       print(
//           'Pul yechib olish muvaffaqiyatli yankunlandi. Yangi balans: \$ $_balance');
//     } else {
//       print(
//           "Noto'g'ri miqdor yoki mablag' yetarli emas. Pul yechib olishda xatolik.");
//     }
//   }

//   double get balance => _balance;
// }

// void main() {
//   BankAccount myAccount = BankAccount('123456789', 1000.0);
//   print('Hisob raqami: ${myAccount.accountNumber}');
//   myAccount.deposit = 500.0;
//   myAccount.withdraw = 200.0;
//   pr// void main() {
//   Student new_student = Student('azizbek', 17, 4);
//   print("ismi: ${new_student.get_name}");
//   print("yoshi: ${new_student.get_age}");
//   print("Bali: ${new_student.get_ball}");
// }
int('Joriy Balans: \$${myAccount.balance}');
// }

// task 7

// class Student {
//   String name;
//   int age;
//   int ball;

//   Student(this.name, this.age, this.ball);
//   get get_name => name;
//   get get_age => age;
//   get get_ball => ball;
// }

