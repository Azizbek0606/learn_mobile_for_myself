class Vehicle {
  int number;
  int make_year;

  Vehicle(this.number, this.make_year);
}

class Car extends Vehicle {
  int speed;
  Car(int number, int make_year, this.speed) : super(number, make_year);
}

class Truck extends Vehicle {
  int speed;
  int length_truck;
  Truck(int number, int make_year , this.speed , this.length_truck) : super(number, make_year);
}

void main() {
  Car car1 = Car(20, 2012 , 155);
  Truck truck1 = Truck(21, 2012 , 100 , 16);
  print(truck1.number);
  print(truck1.make_year);

  print(car1.make_year);
  print(car1.number);
}
