abstract class Drawable {
  void Draw() {}
}

class Rectangle extends Drawable {
  @override
  void Draw() {
    print("To'rtburchak chizildi");
    super.Draw();
  }
}

class Square extends Drawable {
  @override
  void Draw() {
    print("Kvadart chizildi");
    super.Draw();
  }
}

void main() {
  var square1 = Square();
  var rectangle1 = Rectangle();
  square1.Draw();
  rectangle1.Draw();
}

