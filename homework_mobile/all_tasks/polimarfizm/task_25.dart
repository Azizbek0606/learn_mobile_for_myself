class Employye {
  void Work() {
    print("Ish boshlanishi");
  }

  void TakeWork() {
    print("Tannafus vaqti");
  }
}

class Doctor extends Employye {
  @override
  void Work() {
    print("Hozir ishlayapti");
  }

  @override
  void TakeWork() {
    print("Ish toxtatildi, Tannafus vaqti");
  }
}

void main() {
  Employye person = Doctor();
  person.Work();
  person.TakeWork();
}
