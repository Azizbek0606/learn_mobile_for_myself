class Mobile {
  void TurnOn() {}

  void TurnOff() {}
}

class SmartPhone extends Mobile {
  String phone_name;
  SmartPhone(this.phone_name);
  @override
  void TurnOn() {
    print("smartfon Ishga Tushdi");
  }

  @override
  void TurnOff() {
    print("smartfon ishlashdan toxtadi");
  }
}

class Planshet extends Mobile {
  String tablet_name;
  Planshet(this.tablet_name);
  @override
  void TurnOn() {
    print("planshet ishga tushdi");
  }

  @override
  void TurnOff() {
    print("planshet  ishlashdan toxtadi");
  }
}

void main() {
  SmartPhone smartphone = SmartPhone("iPhone 12 pro");
  Planshet planshet = Planshet("iPad 5");
  smartphone.TurnOn();
  smartphone.TurnOff();
  planshet.TurnOn();
  planshet.TurnOff();
}
