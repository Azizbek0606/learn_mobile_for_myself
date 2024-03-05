class Vehicle {
  String brand;
  String model;

  Vehicle(this.brand, this.model);
}

class Car extends Vehicle {
  Car(String brand, String model) : super(brand, model);
}

class Motorcycle extends Vehicle {
  Motorcycle(String brand, String model) : super(brand, model);
}

void main() {
  Car car1 = Car("Toyota", "supra");
  Car car2 = Car("Chevrolet", "Camaro");

  Motorcycle bike1 = Motorcycle("Harley-Davidson", "Sportster");
  Motorcycle bike2 = Motorcycle("Yamaha", "YZF-R1");

  print(car1.brand);
  print(car1.model);
  
  print(bike1.brand);
  print(bike1.model);
}
