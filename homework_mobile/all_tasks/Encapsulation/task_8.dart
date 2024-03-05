import 'dart:io';

class Person {
  String _name = '';
  int _age = 0;

  Person(String name, int age) {
    setName = name;
    setAge = age;
  }

  set setName(String name) {
    if (name != "") {
      _name = name;
    } else {
      _name = "defaul_name";
      print("Ism bo'sh bo'lishi mumkin emas.");
    }
  }

  get getName => _name;

  set setAge(int age) {
    if (age >= 0 && age <= 80) {
      _age = age;
    } else {
      _age = 18;
      print("Yosh 0 dan 80 gacha bo'lgan son bo'lishi kerak.");
    }
  }

  int get getAge => _age;

  void display() {
    print("Ism: $_name, Yosh: $_age");
  }
}

void main() {
  print("ism kiriting:");
  String inp_name = stdin.readLineSync()!;
  print("yoshini kiriting");
  int inp_age = int.parse(stdin.readLineSync()!);
  Person worker = Person(inp_name, inp_age);
  worker.display();
}
