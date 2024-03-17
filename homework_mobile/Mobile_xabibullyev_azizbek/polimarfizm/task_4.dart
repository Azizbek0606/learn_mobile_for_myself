class Vehicle {
  void start() {
    print('The vehicle has started.');
  }

  void stop() {
    print('The vehicle has stopped.');
  }
}

class Car extends Vehicle {
  int speed;
  Car(this.speed);
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
  int price;
  Bike(this.price);
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
  Car myCar = Car(350);

  myCar.start();
  myCar.stop();

  Bike myBike = Bike(125000);

  myBike.start();
  myBike.stop();
}
