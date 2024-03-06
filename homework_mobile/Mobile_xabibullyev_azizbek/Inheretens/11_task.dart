class Shape {
  double perimetr;
  String color;

  Shape(this.perimetr, this.color);
}

class Circle extends Shape {
  int radius;
  Circle(double perimetr, String color, this.radius) : super(perimetr, color);
}

class Rectangle extends Shape {
  int height;
  int width;
  Rectangle(double perimetr, String color, this.height, this.width)
      : super(perimetr, color);
}

class Triangle extends Shape {
  int height;
  Triangle(double perimetr, String color , this.height) : super(perimetr, color);
}

void main() {
  Circle circle1 = Circle(16, "Black" , 45);
  Rectangle rectangle = Rectangle(36, "green" , 12,23);
  Triangle triangle1 = Triangle(20, "Blue" , 12);

  print(triangle1.color);
  print(triangle1.perimetr);
}
