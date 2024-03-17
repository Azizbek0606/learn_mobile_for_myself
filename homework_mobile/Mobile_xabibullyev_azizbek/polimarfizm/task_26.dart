class Employye {
  void Work() {
    print("Ish boshlanishi");
  }

  void TakeWork() {
    print("Tannafus vaqti");
  }
}

class Developer extends Employye {
  int how_much_language;
  Developer(this.how_much_language);
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
  int projects_count;
  Manager(this.projects_count);
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
  int projects_count;
  Desinger(this.projects_count);
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
  Employye developer = Developer(15);
  Employye manager = Manager(15);
  Employye desinger = Desinger(15);
  developer.Work();
  developer.TakeWork();

  manager.Work();
  manager.TakeWork();

  desinger.Work();
  desinger.TakeWork();
}
