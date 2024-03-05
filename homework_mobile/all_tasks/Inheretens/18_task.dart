class Vehicle {
  String model;
  String fuel_type;

  Vehicle(this.model, this.fuel_type);
}

class Car extends Vehicle {
  Car(String model, String fuel_type) : super(model, fuel_type);
}

class ElectricCar extends Vehicle {
  ElectricCar(String model, String fuel_type) : super(model, fuel_type);
}

void main() {
  Car car1 = Car("Malibu", "Benzin");
  ElectricCar electricCar1 = ElectricCar("BYDE", "Elektr");
  print(car1.model);
  print(car1.fuel_type);
  
  print(electricCar1.model);
  print(electricCar1.fuel_type);
}
