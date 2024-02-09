// void main() {
//   String example_name = "Azizbek";
//   for (int a = 0; a < example_name.length; a++) {
//     if (example_name[a] == "z") {
//       continue;
//     } else {
//       print(example_name[a]);
//     }
//   }
//   var list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
//   print("\n\n");
//   for (int a = 0; a < list.length; a++) {
//     print(list[a]);
//   }
//   print("\n\n\n");
//   var arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];
//   arr.forEach((element) {
//     print(element);
//   });
// }

// import 'dart:io';

// void main() {
//   print('a sonini kiriting: ');
//   int? a = int.tryParse(stdin.readLineSync()!);
//   print('b sonini kiriting: ');
//   int? b = int.tryParse(stdin.readLineSync()!);
//   print('qanday amal bajariladi (+, -, *, /): ');
//   String? c = stdin.readLineSync();

//   if (a != null && b != null && c != null) {
//     switch (c) {
//       case '+':
//         print('natija: ${a + b}');
//         break;
//       case '-':
//         print('natija: ${a - b}');
//         break;
//       case '*':
//         print('natija: ${a * b}');
//         break;
//       case '/':
//         if (b != 0) {
//           print('natija: ${a / b}');
//         } else {
//           print('Nolga bo`lish mumkin emas!');
//         }
//         break;
//       default:
//         print('Noma`lum amal!');
//     }
//   } else {
//     print('Xato: son kiritishda muammo yuz berdi!');
//   }
// }
