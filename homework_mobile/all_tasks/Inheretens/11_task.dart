class Shape {
  double perimetr;
  String color;

  Shape(this.perimetr, this.color);
}

class Circle extends Shape {
  Circle(double perimetr, String color) : super(perimetr, color);
}

class Rectangle extends Shape {
  Rectangle(double perimetr, String color) : super(perimetr, color);
}

class Triangle extends Shape {
  Triangle(double perimetr, String color) : super(perimetr, color);
}

void main() {
  Triangle triangle1 = Triangle(20, "Blue");
  Circle circle1 = Circle(16, "Black");
  Rectangle rectangle = Rectangle(36, "green");

  print(triangle1.color);
  print(triangle1.perimetr);
}
