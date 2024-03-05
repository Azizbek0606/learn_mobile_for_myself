import 'dart:io';

class Square {
  int _first_num;
  int _second_num;

  Square(this._first_num, this._second_num);
  void display() {
    _get_peri();
  }

  void _get_peri() {
    print("kvadrat perimetri: ${(_first_num + _second_num) * 2}");
  }
}

void main() {
  print("to'rtburchak bo'yi: ");
  int first_num = int.parse(stdin.readLineSync()!);
  print("to'rtburchak eni: ");
  int second_num = int.parse(stdin.readLineSync()!);
  Square square = Square(first_num, second_num);
  square.display();
}
