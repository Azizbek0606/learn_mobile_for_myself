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