import 'dart:io';

class Student {
  String _name;
  int _age;
  int _ball;

  Student(this._name, this._age, this._ball);
  set set_name(new_name) {
    if (new_name == "" || new_name.Length == 2) {
      _name = "default_name";
    } else {
      _name = new_name;
    }
  }

  set set_age(new_age) {
    if (new_age < 10) {
      _age = 18;
    } else {
      _age = new_age;
    }
  }

  set set_ball(new_ball) {
    if (new_ball < 0 || new_ball > 10) {
      _ball = 3;
    } else {
      _ball = new_ball;
    }
  }

  get get_name => _name;
  get get_age => _age;
  get get_ball => _ball;
}

void main() {
  print("ism kiriting:");
  String inp_name = stdin.readLineSync()!;
  print("ballni kiriting");
  int inp_age = int.parse(stdin.readLineSync()!);
  print("yoshni kiriting");
  int inp_ball = int.parse(stdin.readLineSync()!);
  Student new_student = Student(inp_name, inp_age, inp_ball);
  print("ismi: ${new_student.get_name}");
  print("yoshi: ${new_student.get_age}");
  print("Bali: ${new_student.get_ball}");
}
