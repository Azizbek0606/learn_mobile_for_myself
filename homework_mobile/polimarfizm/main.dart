// task 1

import 'dart:io';

class Shape {
  double calculateArea(){
    return 0;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14159 * radius * radius;
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
  print("Doira radiusi: ");
  double circle_num = double.parse(stdin.readLineSync()!);
  Circle new_circle = Circle(circle_num);
  print("doiraning yuzi: ${new_circle.calculateArea()}");


  print("to'rtburchak eni: ");
  double width_rec = double.parse(stdin.readLineSync()!);
  print("to'rtburchak yuzi: ");
  double heigth_rec = double.parse(stdin.readLineSync()!);
  Rectangle new_rectngle = Rectangle(width_rec, heigth_rec);
  print("to'rtburchak yuzi: ${new_rectngle.calculateArea()}");
}
