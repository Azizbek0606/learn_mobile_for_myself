abstract class Transport {
  void transports_work();
}

class Car extends Transport {
  @override
  void transports_work() {
    print("mashina yurdi");
  }
}

class Motobike extends Transport {
  @override
  void transports_work() {
    print("matatsikl yurdi");
  }
}

void main() {
  Car car1 = Car();
  Motobike motobike1 = Motobike();
  car1.transports_work();
  motobike1.transports_work();
}
