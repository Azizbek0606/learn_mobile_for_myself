class Shape {
  void Draw() {}
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
  Doira doira = Doira(25);
  doira.Draw();
}
