class Vehicle {
  void Start() {
    print("yurdi");
  }

  void Stop() {
    print("toxtadi");
  }
}

class Bike extends Vehicle {
  int price;
  Bike(this.price);
  @override
  void Start() {
    print("velosiped yurdi");
  }
  @override
  void Stop() {
    print("velosiped yurishdan to'xtadi");
  }
}


void main() {
  Bike myVehicle = Bike(35600);

  myVehicle.Start();
  myVehicle.Stop();
}
