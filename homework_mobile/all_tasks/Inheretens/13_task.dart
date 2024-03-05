class Vehicle {
  int number;
  int make_year;

  Vehicle(this.number, this.make_year);
}

class Car extends Vehicle {
  Car(int number, int make_year) : super(number, make_year);
}

class Truck extends Vehicle {
  Truck(int number, int make_year) : super(number, make_year);
}

void main() {
  Car car1 = Car(20, 2012);
  Truck truck1 = Truck(21, 2012);
  print(truck1.number);
  print(truck1.make_year);
  
  print(car1.make_year);
  print(car1.number);
}
