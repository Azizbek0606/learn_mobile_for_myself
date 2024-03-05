class Shape {
  void Draw() {
    print("Shakl chizildi");
  }
}

class Doira extends Shape {
  @override
  void Draw() {
    print("Doira chizildi");
  }
}

void main() {
  Shape doira = Doira();
  doira.Draw();
}
