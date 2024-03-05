class Shape {
  void draw() {
    print("Shakl chizildi");
  }
}

class Cirle extends Shape {}

class Rectangle extends Shape {}

class Triangle extends Shape {}

void main() {
  Cirle circle = Cirle();
  Rectangle rectangle = Rectangle();
  Triangle triangle = Triangle();
  circle.draw();
  rectangle.draw();
  triangle.draw();
}
