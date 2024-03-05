class Mobile {
  void TurnOn() {
    print("Telefon yondi");
  }

  void TurnOff() {
    print("Telefon o'chdi");
  }
}

class Phone1 extends Mobile {
  @override
  void TurnOn() {
    print("Qurilma Ishga Tushdi");
  }
}

class Phone2 extends Mobile {
  @override
  void TurnOff() {
    print("Qurilma ishlashdan toxtatildi");
  }
}

void main() {
  Mobile phone1 = Phone1();
  Mobile phone2 = Phone2();
  phone1.TurnOn();
  phone2.TurnOff();
}
