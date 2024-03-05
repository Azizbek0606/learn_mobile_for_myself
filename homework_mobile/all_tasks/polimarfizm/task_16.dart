class Shape {
  void Draw() {
    print("Shakl chizildi");
  }
}

class Kvadart extends Shape {
  @override
  void Draw() {
    print("Kvadrat chizildi");
  }
}

class Uchburchak extends Shape {
  @override
  void Draw() {
    print("Uchburchak  chizildi");
  }
}

class Doira extends Shape {
  @override
  void Draw() {
    print("Doira chizildi");
  }
}

void main() {
  Shape kvadrat = Kvadart();
  Shape uchburchak = Uchburchak();
  Shape doira = Doira();
  kvadrat.Draw();
  uchburchak.Draw();
  doira.Draw();
}
