import "dart:io";

mixin ComparableMixin {
  int getA();
  int getB();

  void compare() {
    int a = getA();
    int b = getB();
    if (a > b) {
      print("Katta son: ${a}");
    } else {
      print("Katta son: ${b}");
    }
  }
}

class CompareNum with ComparableMixin {
  int a;
  int b;
  CompareNum(this.a, this.b);

  @override
  int getA() => a;

  @override
  int getB() => b;
}

void main() {
  print("Birinchi sonni kiriting: ");
  int a = int.parse(stdin.readLineSync()!);
  print("Ikkinchi sonni kiriting: ");
  int b = int.parse(stdin.readLineSync()!);
  CompareNum compareNum = CompareNum(a, b);
  compareNum.compare();
}
