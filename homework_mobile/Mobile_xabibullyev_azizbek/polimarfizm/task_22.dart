class Shape {
  void Draw() {
    print("Shakl chizildi");
  }

  void Move() {
    print("Shak harakat;andi");
  }
}

class Kvadart extends Shape {
  @override
  void Draw() {
    print("Kvadrat chizildi");
  }

  @override
  void Move() {
    print("Kvadrat Haraklantdi");
  }
}

class Uchburrchak extends Shape {
  @override
  void Draw() {
    print("Uchburchak chizildi");
  }

  @override
  void Move() {
    print("Uchburchak Haraklantdi");
  }
}

class Doira extends Shape {
  @override
  void Draw() {
    print("Doira chizildi");
  }

  @override
  void Move() {
    print("Doira Haraklantdi");
  }
}

void main() {
  Shape kvadrat = Kvadart();
  Shape uchburchak = Uchburrchak();
  Shape doira = Doira();
  kvadrat.Draw();
  kvadrat.Move();
  
  uchburchak.Draw();
  uchburchak.Move();
  
  doira.Draw();
  doira.Move();
}
