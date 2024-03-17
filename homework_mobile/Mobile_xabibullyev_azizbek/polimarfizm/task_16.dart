class Shape {
  void Draw() {}
}

class Kvadart extends Shape {
  int perimetr;
  Kvadart(this.perimetr);
  @override
  void Draw() {
    print("Kvadrat chizildi");
  }
}

class Uchburchak extends Shape {
  int height;
  Uchburchak(this.height);
  @override
  void Draw() {
    print("Uchburchak  chizildi");
  }
}

class Doira extends Shape {
  int radius;
  Doira(this.radius);
  @override
  void Draw() {
    print("Doira chizildi");
  }
}

void main() {
  Kvadart kvadrat = Kvadart(36);
  Uchburchak uchburchak = Uchburchak(36);
  Doira doira = Doira(23);
  kvadrat.Draw();
  uchburchak.Draw();
  doira.Draw();
}
