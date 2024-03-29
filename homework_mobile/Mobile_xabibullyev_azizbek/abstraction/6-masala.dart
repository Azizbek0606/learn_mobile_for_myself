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

void main() {
  var circle = Circle(5);

  print('Circle - ');
  print('Area: ${circle.calculateArea()}');
  print('Perimeter: ${circle.calculatePerimeter()}');
}

