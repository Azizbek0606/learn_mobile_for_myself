class Vehicle {
  String make;
  double speed;

  Vehicle(this.make, this.speed);
}

class Car extends Vehicle {
  Car(String make, double speed) : super(make, speed);
}

class Bicycle extends Vehicle {
  Bicycle(String make, double speed) : super(make, speed);
}

void main() {
  Car car1 = Car("2021", 200.0);
  Bicycle bicycle1 = Bicycle("2023", 40.0);

  print(car1.make);
  print(car1.speed);
  
  print(bicycle1.make);
  print(bicycle1.speed);
}
