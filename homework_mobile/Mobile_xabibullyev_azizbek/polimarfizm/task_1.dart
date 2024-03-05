import 'dart:math';

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);
  @override
  double area() {
    return width * height;
  }
}
void main() {
  Circle doira = Circle(12);
  print('Doiraning yuzasi: ${doira.area()}');
  Rectangle tortburchak = Rectangle(4, 6);
  print('To`rtburchakning yuzasi: ${tortburchak.area()}');
}
