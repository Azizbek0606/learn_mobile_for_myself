import 'dart:io';

void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6];
  print("1 - son qo'shish");
  print("2 - son o'chirish");
  print("3 - son qidirish");
  print("4 - dastruni to'xtatish");
  int input_num = int.parse(stdin.readLineSync()!);
  void add_num(List arr) {
    print("qo'shiladigan sonni kiriting");
    int input_num = int.parse(stdin.readLineSync()!);
    arr.add(input_num);
    print("Listga son qo'shildi");
    print(arr);
  }

  void remove_num(List arr) {
    print("o'chiriladigan sonni kiriting");
    int input_num = int.parse(stdin.readLineSync()!);
    int find_index = arr.indexOf(input_num);
    arr.removeAt(find_index);
    print('${input_num} soni listdan o\'chirib tashlandi');
    print(arr);
  }

  void search_num(List arr) {
    print("qaysi sonni qidiramiz?");
    int input_num = int.parse(stdin.readLineSync()!);
    if (arr.contains(input_num)) {
      int find_index = arr.indexOf(input_num);
      print('son list ichida bor va u ${find_index} - indexda joylashgan');
    } else {
      print("bunday qiymat topilmadi");
    }
  }

  bool breake_loop = true;
  while (breake_loop) {
    if (input_num == 1) {
      add_num(arr);
      breake_loop = false;
    } else if (input_num == 2) {
      remove_num(arr);
      breake_loop = false;
    } else if (input_num == 3) {
      search_num(arr);
      breake_loop = false;
    } else if (input_num == 4) {
      print("Dastur to'xtatildi");
      breake_loop = false;
    } else {
      print("xato qiymat  kiritildi\n1dan 4gacha sonlar kiriting");
    }
  }
}
