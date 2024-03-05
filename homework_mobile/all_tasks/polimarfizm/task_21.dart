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

void main() {
  Shape kvadrat = Kvadart();
  kvadrat.Draw();
  kvadrat.Move();
}
