import 'dart:math';

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

void main() {
  Circle circle = Circle(5);
  print('Doiraning yuzasi: ${circle.calculateArea()}');

  Rectangle rectangle = Rectangle(4, 6);
  print('To`rtburchakning yuzasi: ${rectangle.calculateArea()}');
}
