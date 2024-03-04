import 'dart:io';

class Count {
  String _event;
  int _first_num;
  int _second_num;

  Count(this._event, this._first_num, this._second_num);

  void math() {
    switch (_event) {
      case "+":
        _plus();
        break;
      case "-":
        _minus();
        break;
      default:
        print("Noto'g'ri format: '+' yoki '-' kiriting.");
        break;
    }
  }

  void _plus() {
    print(_first_num + _second_num);
  }

  void _minus() {
    print(_first_num - _second_num);
  }
}

void main() {
  print("Birinchi son:");
  int first_num = int.parse(stdin.readLineSync()!);
  print("Ikkinchi son:");
  int second_num = int.parse(stdin.readLineSync()!);
  print("Amalni kiriting + yoki -:");
  String event = stdin.readLineSync()!;

  Count countClass = Count(event, first_num, second_num);
  countClass.math();
}
