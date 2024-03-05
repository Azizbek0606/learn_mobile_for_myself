class Vehicle {
  void start() {
    print('The vehicle has started.');
  }

  void stop() {
    print('The vehicle has stopped.');
  }
}

class Car extends Vehicle {
  @override
  void start() {
    print('The car engine has started.');
  }

  @override
  void stop() {
    print('The car engine has stopped.');
  }
}

class Bike extends Vehicle {
  @override
  void start() {
    print('The bike engine has started.');
  }

  @override
  void stop() {
    print('The bike engine has stopped.');
  }
}

void main() {
  Car myCar = Car();

  myCar.start();
  myCar.stop();

  Bike myBike = Bike();

  myBike.start();
  myBike.stop();
}
