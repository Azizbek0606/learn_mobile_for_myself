class Vehicle {
  String brend;
  double speed;

  Vehicle(this.brend, this.speed);
}

class Car extends Vehicle {
  Car(String brend, double speed) : super(brend, speed);
}

class Bicycle extends Vehicle {
  Bicycle(String brend, double speed) : super(brend, speed);
}

void main() {
  Car car1 = Car("Nexia", 200.0);
  Bicycle bicycle1 = Bicycle("Cama", 40.0);

  print(car1.brend);
  print(car1.speed);
  
  print(bicycle1.brend);
  print(bicycle1.speed);
}
