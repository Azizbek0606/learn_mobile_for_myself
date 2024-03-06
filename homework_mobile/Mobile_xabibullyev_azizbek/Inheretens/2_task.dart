class Vehicle {
  String brand;
  String model;

  Vehicle(this.brand, this.model);
}

class Car extends Vehicle {
  int price;
  Car(String brand, String model, this.price) : super(brand, model);
}

class Motorcycle extends Vehicle {
  int max_speed;
  Motorcycle(String brand, String model , this.max_speed) : super(brand, model);
}

void main() {
  Car car1 = Car("Toyota", "supra" , 12000);
  Car car2 = Car("Chevrolet", "Camaro" , 14000);

  Motorcycle bike1 = Motorcycle("Harley-Davidson", "Sportster" , 290);
  Motorcycle bike2 = Motorcycle("Yamaha", "YZF-R1" , 320);

  print(car1.brand);
  print(car1.model);
  print(car1.price);

  print(bike1.brand);
  print(bike1.model);
  print(bike1.max_speed);
}
