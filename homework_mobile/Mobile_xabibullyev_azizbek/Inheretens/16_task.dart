class Shape {
  String color;
  double area;
  Shape(this.color, this.area);
}

class Cricle extends Shape {
  Cricle(String color, double area) : super(color, area);
}

class Square extends Shape {
  Square(String color, double area) : super(color, area);
}

void main() {
  Cricle cricle = Cricle("Red", 20);
  Square square = Square("Black", 15);
  print(cricle.color);
  print(cricle.area);
  
  print(square.color);
  print(square.area);
}
