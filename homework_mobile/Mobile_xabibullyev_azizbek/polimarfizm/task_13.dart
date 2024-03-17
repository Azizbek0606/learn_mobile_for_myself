class Mobile {
  void TurnOn() {
  }

  void TurnOff() {
  }
}

class Phone1 extends Mobile {
  String phone_name;
  Phone1(this.phone_name);
  @override
  void TurnOn() {
    print("Qurilma Ishga Tushdi");
  }
}

class Phone2 extends Mobile {
  String phone_name;
  Phone2(this.phone_name);
  @override
  void TurnOff() {
    print("Qurilma ishlashdan toxtatildi");
  }
}

void main() {
  Phone1 phone1 = Phone1("iPhone 12 pro");
  Phone2 phone2 = Phone2("Samsung S 24 ultra");
  phone1.TurnOn();
  phone2.TurnOff();
}
