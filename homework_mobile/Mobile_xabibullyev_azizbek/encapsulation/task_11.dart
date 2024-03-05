import 'dart:io';

class CheckPassword {
  String _password;
  CheckPassword(this._password) {
    check_and_set_password = _password;
  }

  set check_and_set_password(String password) {
    int count_upper_text = 0;
    int count_special_char = 0;
    int count_num = 0;

    if (password.length >= 8) {
      for (int i = 0; i < password.length; i++) {
        String char = password[i];
        if (char.toUpperCase() == char && char.toLowerCase() != char) {
          count_upper_text++;
        }
        if (RegExp(r'\d').hasMatch(char)) {
          count_num++;
        }
        if (RegExp(r'[,./\|!@#$%^&*":]').hasMatch(char)) {
          count_special_char++;
        }
      }
    } else {
      print("ko'proq belgi kiriting");
    }
    if (count_upper_text >= 1) {
      if (count_special_char >= 1) {
        if (count_num >= 1) {
          _password = password;
          print("Parol muvofaqqiyatli saqlandi ");
        } else {
          print("parolda kamida bitta son ishtirok etish shart !");
        }
      } else {
        print("Parolda kamida bitta belgi bo'lishi shart");
      }
    } else {
      print(
          "Qayta urinib ko'ring\nParolda kamida 1 ta katta harf bo'lishi shart");
    }
  }

  get get_password => this._password;
}

void main() {
  print("Parol Kiriting: ");
  String password = stdin.readLineSync()!;
  CheckPassword new_password = CheckPassword(password);
  print("saqlangan Parol: ${new_password.get_password}");
}
