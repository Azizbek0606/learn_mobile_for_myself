class Vehicle {
  void Start() {
    print("Velosped yurdi");
  }

  void Stop() {
    print("Velosped yurishdan toxtadi");
  }
}

void main() {
  Vehicle myVehicle = Vehicle();

  myVehicle.Start();
  myVehicle.Stop();
}
