import 'dart:io';

class Calculate {
  int _first_num;
  int _second_num;
  String _event;
  Calculate(this._first_num, this._second_num, this._event);
  void show_result() {
    if (_event == "+") {
      _plus();
    } else if (_event == '-') {
      _minus();
    } else if (_event == "*") {
      _increase();
    } else if (_event == "/") {
      _division();
    } else {
      print("xato amal kiritildi");
    }
  }

  void _plus() {
    print("sonlar qo'shilganda: ${_first_num + _second_num}");
  }

  void _minus() {
    print("sonlar ayrilganda: ${_first_num - _second_num}");
  }

  void _increase() {
    print("sonlar Ko'payritilganda: ${_first_num * _second_num}");
  }

  void _division() {
    print("sonlar bo'linganda: ${_first_num / _second_num}");
  }
}

void main() {
  print("Birinchi son: ");
  int first_num = int.parse(stdin.readLineSync()!);
  print("Ikkinchi son: ");
  int second_num = int.parse(stdin.readLineSync()!);
  print("Birinchi son: ");
  String char_event = stdin.readLineSync()!;
  Calculate new_calculate = Calculate(first_num, second_num, char_event);
  new_calculate.show_result();
}