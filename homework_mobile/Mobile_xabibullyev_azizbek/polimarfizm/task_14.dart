class Mobile {
  void TurnOn() {
    print("Telefon yondi");
  }

  void TurnOff() {
    print("Telefon o'chdi");
  }
}

class SmartPhone extends Mobile {
  @override
  void TurnOn() {
    print("Smartphone Ishga Tushdi");
  }

  @override
  void TurnOff() {
    print("Smartphone ishlashdan toxtadi");
  }
}

class Planshet extends Mobile {
  @override
  void TurnOn() {
    print("Planshet ishga tushdi");
  }

  @override
  void TurnOff() {
    print("Planshet  ishlashdan toxtadi");
  }
}

void main() {
  Mobile smartphone = SmartPhone();
  Mobile planshet = Planshet();
  smartphone.TurnOn();
  smartphone.TurnOff();
  planshet.TurnOn();
  planshet.TurnOff();
}
