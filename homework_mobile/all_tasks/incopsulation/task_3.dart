import 'dart:io';

class Read_only {
  String _text = "lorem ipsum dolor sit";
  set set_new_text(new_text) {
    if (new_text == "") {
      _text = _text;
    } else {
      _text = new_text;
    }
  }

  get get_text => _text;
}

void main() {
  Read_only second_class = Read_only();
  print("matn: ${second_class.get_text}");
  print("Yangi matn kiriting:");
  String input_txt = stdin.readLineSync()!;
  second_class.set_new_text = input_txt;
  print("yangilangan matn: ${second_class.get_text}");
}
