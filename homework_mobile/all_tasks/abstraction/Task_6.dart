abstract class Shape {
  double calculateArea();

  double calculatePerimeter();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * 3.14 * radius;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }

  @override
  double calculatePerimeter() {
    return 2 * (length + width);
  }
}

void main() {
  var circle = Circle(5);
  var rectangle = Rectangle(4, 6);

  print('Circle - ');
  print('Area: ${circle.calculateArea()}');
  print('Perimeter: ${circle.calculatePerimeter()}');

  print('Rectangle - ');
  print('Area: ${rectangle.calculateArea()}');
  print('Perimeter: ${rectangle.calculatePerimeter()}');
}
