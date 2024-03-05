class Vehicle {
  void Start() {
    print("yurdi");
  }

  void Stop() {
    print("toxtadi");
  }
}

class Bike extends Vehicle {
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
  Bike myVehicle = Bike();

  myVehicle.Start();
  myVehicle.Stop();
}
