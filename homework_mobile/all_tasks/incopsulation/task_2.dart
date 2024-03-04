import 'dart:io';
class Construktor {
  String _name;
  int _age;
  Construktor(this._name, this._age);
  set set_age(age) {
    if (age < 0 || age > 85) {
      this._age = 18;
    } else {
      this._age = age;
    }
  }

  set set_name(name) {
    if (name == "" || name.Length <= 2 ){
      this._name = "default_name";
    } else {
      this._name = name;
    }
  }
  get get_name => this._name;
  get get_age => this._age;
}

void main() {
  print("Ism kiriting:");
  String input__name = stdin.readLineSync()!;
  print("Yosh kiriting:");
  int input__age = int.parse(stdin.readLineSync()!);
  Construktor _second_num_class = Construktor(input__name, input__age);
  print("yosh ${_second_num_class.get_age}");
  print("Ism ${_second_num_class.get_name}");
}
