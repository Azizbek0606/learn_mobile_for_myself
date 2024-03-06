class Vehicle {
  String brend;
  double speed;

  Vehicle(this.brend, this.speed);
}

class Car extends Vehicle {
  bool comfort;
  Car(String brend, double speed , this.comfort) : super(brend, speed);
}

class Bicycle extends Vehicle {
  int price;
  Bicycle(String brend, double speed, this.price) : super(brend, speed);
}

void main() {
  Car car1 = Car("Nexia", 200.0, true);
  Bicycle bicycle1 = Bicycle("Cama", 40.0 , 120);

  print(car1.brend);
  print(car1.speed);

  print(bicycle1.brend);
  print(bicycle1.speed);
}
