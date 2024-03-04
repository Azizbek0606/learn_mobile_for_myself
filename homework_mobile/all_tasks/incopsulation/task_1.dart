import 'dart:io';

class SimpleClass {
  String _name;
  int _age;

  SimpleClass(this._name, this._age) {
    if (_name == "") {
      _name = "default_name";
    }
    if (_age < 3) {
      _age = 3;
    }
  }

  set set_name(String name) {
    if (name == "") {
      this._name = "default_name";
    } else {
      this._name = name; 
    }
  }

  String get get_name => _name;

  set set_age(int age) {
    if (age < 3 || age > 80) {
      this._age = age < 3 ? 3 : 80; 
    } else {
      this._age = age;
    }
  }

  int get get_age => _age;
}

void main() {
  print("Ism kiriting:");
  String input__name = stdin.readLineSync()!;
  print("Yosh kiriting:");
  int input__age = int.parse(stdin.readLineSync()!);
  SimpleClass _second_num_class = SimpleClass(input__name, input__age);
  print("Ism: ${_second_num_class.get_name}");
  print("Yosh: ${_second_num_class.get_age}");
  _second_num_class.set_age = 2;
  _second_num_class.set_name = "";
  print("Yangilangan ism: ${_second_num_class.get_name}");
  print("Yangilangan yosh: ${_second_num_class.get_age}");
}
