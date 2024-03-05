class Employye {
  void Work() {
    print("Ish boshlanishi");
  }

  void TakeWork() {
    print("Tannafus vaqti");
  }
}

class Developer extends Employye {
  @override
  void Work() {
    print(" Developer Hozir ishlayapti !");
  }

  @override
  void TakeWork() {
    print("Ish toxtatildi, Tannafus vaqti");
  }
}

class Manager extends Employye {
  @override
  void Work() {
    print(" Manager Hozir ishlayapti !");
  }

  @override
  void TakeWork() {
    print("Ish toxtatildi, Tannafus vaqti");
  }
}

class Desinger extends Employye {
  @override
  void Work() {
    print(" Desinger Hozir ishlayapti ! ");
  }

  @override
  void TakeWork() {
    print("Ish toxtatildi, Tannafus vaqti");
  }
}

void main() {
  Employye developer = Developer();
  Employye manager = Manager();
  Employye desinger = Desinger();
  developer.Work();
  developer.TakeWork();

  manager.Work();
  manager.TakeWork();
  
  desinger.Work();
  desinger.TakeWork();
}
