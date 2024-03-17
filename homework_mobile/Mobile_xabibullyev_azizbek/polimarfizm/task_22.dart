class Shape {
  void Draw() {
    print("Shakl chizildi");
  }

  void Move() {
    print("Shak harakat;andi");
  }
}

class Kvadart extends Shape {
  int perimetr;
  Kvadart(this.perimetr);
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
  int height;
  Uchburrchak(this.height);
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
  int radius;
  Doira(this.radius);
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
  Shape kvadrat = Kvadart(15);
  Shape uchburchak = Uchburrchak(30);
  Shape doira = Doira(45);
  kvadrat.Draw();
  kvadrat.Move();
  
  uchburchak.Draw();
  uchburchak.Move();
  
  doira.Draw();
  doira.Move();
}
