// import 'dart:io';

// class SimpleClass {
//   String __name;
//   int __age;

//   SimpleClass(this.__name, this.__age) {
//     if (__name == "") {
//       __name = "default _name";
//     }
//     if (__age > 3 || __age == '') {
//       __age = 3;
//     }
//   }

//   set _name(String _name) {
//     if (_name == "") {
//       this.__name = "default _name";
//     } else {
//       this.__name = _name;
//     }
//   }

//   String get get__name => __name;

//   set _age(int _age) {
//     if (_age > 3 && _age == '') {
//       this.__age = 3;
//     } else {
//       this.__age = _age;
//     }
//   }

//   int get get__age => __age;
// }

// void main() {
//   print("Ism kiriting:");
//   String input__name = stdin.readLineSync()!;
//   print("Yosh kiriting:");
//   int input__age = int.parse(stdin.readLineSync()!);
//   SimpleClass _second_num_class = SimpleClass(input__name, input__age);
//   print("Ism: ${_second_num_class.get__name}");
//   print("Yosh: ${_second_num_class.get__age}");
//   _second_num_class._age = 2;
//   _second_num_class._name = "Azizbek";
//   print("Yangilangan ism: ${_second_num_class.get__name}");
//   print("Yangilangan yosh: ${_second_num_class.get__age}");
// }

// task 2

// import 'dart:io';

// class Construktor {
//   String _name;
//   int _age;
//   Construktor(this._name, this._age);
//   get get_name => this._name;
//   get get_age => this._age;
// }

// void main() {
//   print("Ism kiriting:");
//   String input__name = stdin.readLineSync()!;
//   print("Yosh kiriting:");
//   int input__age = int.parse(stdin.readLineSync()!);
//   Construktor _second_num_class = Construktor(input__name, input__age);
//   print("yosh ${_second_num_class.get_age}");
//   print("Ism ${_second_num_class.get_name}");
// }

// Task3

// class Read_only {
//   String _text = "lorem ipsum dolor sit";
//   get get_text => _text;
// }

// void main() {
//   Read_only _second_num_class = Read_only();
//   print("matn: ${_second_num_class.get_text}");
// }

// task 4

// import 'dart:io';

// import 'dart:io';

// class Count {
//   String _event;
//   int _first_num;
//   int _second_num;
//   Count(this._event, this._first_num, this._second_num);
//   void math() {
//     if (_event == "+") {
//       _plus();
//     } else if (_event == "-") {
//       _minus();
//     } else {
//       print("Noto'g'ri format: '+' yoki '-' kiriting.");
//     }
//   }
//   void _plus() {
//     print(_first_num + _second_num);
//   }
//   void _minus() {
//     print(_first_num - _second_num);
//   }
// }
// void main() {
//   print("birinchi son:");
//   int first_num = int.parse(stdin.readLineSync()!);
//   print("ikkinchi son:");
//   int second_num = int.parse(stdin.readLineSync()!);
//   print("Amalni kiriting + yoki -:");
//   String event = stdin.readLineSync()!;
//   Count count_class = Count(event, first_num, second_num);
//   count_class.math();
// }

//  task5

// import 'dart:io';

// class TemperatureConverter {
//   String _farOrCel;
//   double _weather;
//   TemperatureConverter(this._farOrCel, this._weather);

//   void convert() {
//     if (_farOrCel.toLowerCase() == "c") {
//       _celsiusToFahrenheit(_weather);
//     } else if (_farOrCel.toLowerCase() == "f") {
//       _fahrenheitToCelsius(_weather);
//     } else {
//       print("Noto'g'ri format: 'c' yoki 'f' kiriting.");
//     }
//   }

//   void _celsiusToFahrenheit(double celsius) {
//     print("${celsius}°C = ${(celsius * 9 / 5) + 32}°F");
//   }

//   void _fahrenheitToCelsius(double fahrenheit) {
//     print("${fahrenheit}°F = ${(fahrenheit - 32) * 5 / 9}°C");
//   }
// }

// void main() {
//   print("Haroratni kiriting:");
//   double _weather = double.parse(stdin.readLineSync()!);
//   print("Farangeytga o'tkazish uchun 'f', Selsiyga o'tkazish uchun 'c' ni kiriting:");
//   String _farOrCel = stdin.readLineSync()!;
//   TemperatureConverter converter = TemperatureConverter(_farOrCel, _weather);
//   converter.convert();
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
//   print('Joriy Balans: ${myAccount.balance}');
// }

// task 7

// import 'dart:io';
// class Student {
//   String _name;
//   int _age;
//   int _ball;

//   Student(this._name, this._age, this._ball);
//   get get_name => _name;
//   get get_age => _age;
//   get get_ball => _ball;
// }
// void main() {
//   print("ism kiriting:");
//   String inp_name = stdin.readLineSync()!;
//   print("ballni kiriting");
//   int inp_age = int.parse(stdin.readLineSync()!);
//   print("yoshni kiriting");
//   int inp_ball = int.parse(stdin.readLineSync()!);
//   Student new_student = Student(inp_name , inp_age, inp_ball);
//   print("ismi: ${new_student.get_name}");
//   print("yoshi: ${new_student.get_age}");
//   print("Bali: ${new_student.get_ball}");
// }

//  task 8

// import 'dart:io';

// class Person {
//   String _name;
//   int _age;

//   Person(this._name, this._age) {
//     setName = _name;
//     setAge = _age;
//   }

//   set setName(String name) {
//     if (name.isNotEmpty) {
//       _name = name;
//     } else {
//       print("Ism bo'sh bo'lishi mumkin emas.");
//     }
//   }

//   String get getName => _name;

//   set setAge(int age) {
//     if (age >= 0 && age <= 80) {
//       _age = age;
//     } else {
//       print("Yosh 0 dan 80 gacha bo'lgan son bo'lishi kerak.");
//     }
//   }

//   int get getAge => _age;

//   void display() {
//     print("Ism: ${_name}, Yosh: ${_age}");
//   }
// }

// void main() {
//   print("Ism kiriting:");
//   String inp_name = stdin.readLineSync()!;
//   print("Yoshni kiriting:");
//   int inp_age = int.parse(stdin.readLineSync()!);
//   Person person = Person(inp_name, inp_age);
//   person.display();
// }

// task 9

// import 'dart:io';

// class Square {
//   int _first_num;
//   int _second_num;

//   Square(this._first_num, this._second_num);
//   void display() {
//     _get_peri();
//   }

//   void _get_peri() {
//     print("kvadrat perimetri: ${(_first_num + _second_num) * 2}");
//   }
// }

// void main() {
//   print("to'rtburchak bo'yi: ");
//   int first_num = int.parse(stdin.readLineSync()!);
//   print("to'rtburchak eni: ");
//   int second_num = int.parse(stdin.readLineSync()!);
//   Square square = Square(first_num, second_num);
//   square.display();
// }

// task 10
// import 'dart:io';

// class Book {
//   String _book_name;
//   String _Book_title;
//   int _book_year;
//   Book(this._book_name, this._Book_title, this._book_year);

//   get get_book_name => this._book_name;
//   get get_book_title => this._Book_title;
//   get get_book_year => this._book_year;
// }

// void main() {
//   print("Kitob nomi: ");
//   String name = stdin.readLineSync()!;
//   print("Kitob yozuvchisi: ");
//   String title = stdin.readLineSync()!;
//   print("Kitob ishlab chiqarilgan vaqt: ");
//   int year = int.parse(stdin.readLineSync()!);
//   Book new_book = Book(name, title, year);
//   print("kitob nomi: ${new_book.get_book_name}");
//   print("Kitob ishlab chiqarilgan sana: ${new_book.get_book_year}");
//   print("Kitob yozuvchisi: ${new_book.get_book_title}");
// }

// task 11

// import 'dart:io';

// class CheckPassword {
//   String _password;
//   CheckPassword(this._password) {
//     check_and_set_password = _password;
//   }

//   set check_and_set_password(String password) {
//     int count_upper_text = 0;
//     int count_special_char = 0;
//     int count_num = 0;

//     if (password.length >= 8) {
//       for (int i = 0; i < password.length; i++) {
//         String char = password[i];
//         if (char.toUpperCase() == char && char.toLowerCase() != char) {
//           count_upper_text++;
//         }
//         if (RegExp(r'\d').hasMatch(char)) {
//           count_num++;
//         }
//         if (RegExp(r'[,./\|!@#$%^&*":]').hasMatch(char)) {
//           count_special_char++;
//         }
//       }
//     } else {
//       print("ko'proq belgi kiriting");
//     }
//     if (count_upper_text >= 1 && count_num >= 1 && count_special_char >= 1) {
//       _password = password;
//       print("Parol muvaffaqiyatli saqlandi");
//     } else {
//       print("Qayta urinib ko'ring");
//     }
//   }
// }

// void main() {
//   print("Parol Kiriting: ");
//   String password = stdin.readLineSync()!;
//   CheckPassword new_class_pass = CheckPassword(password);
// }

// task 12
// import 'dart:io';

// class Calculate {
//   int _first_num;
//   int _second_num;
//   String _event;
//   Calculate(this._first_num, this._second_num, this._event);
//   void show_result() {
//     if (_event == "+") {
//       _plus();
//     } else if (_event == '-') {
//       _minus();
//     } else if (_event == "*") {
//       _increase();
//     } else if (_event == "/") {
//       _division();
//     } else {
//       print("xato amal kiritildi");
//     }
//   }

//   void _plus() {
//     print("sonlar qo'shilganda ${_first_num + _second_num}");
//   }

//   void _minus() {
//     print("sonlar qo'shilganda ${_first_num - _second_num}");
//   }

//   void _increase() {
//     print("sonlar qo'shilganda ${_first_num * _second_num}");
//   }

//   void _division() {
//     print("sonlar qo'shilganda ${_first_num / _second_num}");
//   }
// }

// void main() {
//   print("Birinchi son: ");
//   int first_num = int.parse(stdin.readLineSync()!);
//   print("Ikkinchi son: ");
//   int second_num = int.parse(stdin.readLineSync()!);
//   print("Birinchi son: ");
//   String char_event = stdin.readLineSync()!;
//   Calculate new_calculate = Calculate(first_num, second_num, char_event);
//   new_calculate.show_result();
// }

// import 'dart:math';

// class Randon_num {
//   int _qiymat = 0;
//   final Random _rnd = Random();

//   void tashla() {
//     _qiymat = _rnd.nextInt(6) + 1;
//   }

//   int get qiymat => _qiymat;
// }

// void main() {
//   final zar = Randon_num();
//   zar.tashla();
//   print('Tashlangan zar qiymati: ${zar.qiymat}');
//   zar.tashla();
//   print('Qayta tashlangan zar qiymati: ${zar.qiymat}');
// }

// task 14

// import 'dart:io';

// class Timer {
//   int _timer_num;
//   Timer(this._timer_num);
//   void _timer_func() async {
//     for (int i = 1; i <= _timer_num; i++) {
//       await Future.delayed(Duration(seconds: 1));
//       print(i);
//     }
//   }

//   set change_timer(new_time) {
//     _timer_num = new_time;
//   }

//   void restart() {
//     _timer_func();
//   }

//   void start_timer() {
//     _timer_func();
//   }
// }
// void main() {
//   print("timer davomiligini kiriting: ");
//   int input_time = int.parse(stdin.readLineSync()!);
//   Timer new_time = Timer(input_time);
//   new_time.start_timer();
// }

// task 15

// import 'dart:io';

// class Personddress {
//   String _name;
//   String _street;
//   int _postal_code;
//   Personddress(this._name, this._street, this._postal_code);
//   set set_name(new_name) {
//     _name = new_name;
//   }

//   set set_street(new_street) {
//     _street = new_street;
//   }

//   set set_code(new_code) {
//     _postal_code = new_code;
//   }

//   get get_name => this._name;
//   get get_street => this._street;
//   get get_postal_code => this._postal_code;
// }

// void main() {
//   print("ism kiriting");
//   String name = stdin.readLineSync()!;
//   print("manzlni kiriting");
//   String street = stdin.readLineSync()!;
//   print("pochta indexini kiriting");
//   int postal_index = int.parse(stdin.readLineSync()!);
//   Personddress new_addres = Personddress(name, street, postal_index);
//   print("ism: ${new_addres.get_name}");
//   print("manzil ${new_addres.get_street}");
//   print("pochta index: ${new_addres.get_postal_code}");
//   new_addres._postal_code = 12;
// }
