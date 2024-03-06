class Shape {
  void draw() {
    print("Shakl chizildi");
  }
}

class Cirle extends Shape {
  int radius;
  Cirle(this.radius);
}

class Rectangle extends Shape {
  int width;
  int height;
  Rectangle(this.width, this.height);
}

class Triangle extends Shape {
  int height;
  Triangle(this.height);
}

void main() {
  Cirle circle = Cirle(15);
  Rectangle rectangle = Rectangle(20,15);
  Triangle triangle = Triangle(30);
  circle.draw();
  rectangle.draw();
  triangle.draw();
}
