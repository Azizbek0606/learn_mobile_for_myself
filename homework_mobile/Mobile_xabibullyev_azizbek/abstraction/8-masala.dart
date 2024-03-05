abstract class Drawable {
  void Draw() {
    print("Doira chizildi");
  }
}

class Circle extends Drawable {
  @override
  void Draw() {
    super.Draw();
  }
}

void main() {
  var circle1 = Circle();
  circle1.Draw();
}


