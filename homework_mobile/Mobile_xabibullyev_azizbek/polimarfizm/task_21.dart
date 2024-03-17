class Shape {
  void Draw() {
    print("Shakl chizildi");
  }

  void Move() {
    print("Shakl harakatlandi");
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

void main() {
  Shape kvadrat = Kvadart(35);
  kvadrat.Draw();
  kvadrat.Move();
}
