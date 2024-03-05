class Fruit {
  void Peel() {
    print("Mevani tozalansin");
  }

  void Eat() {
    print("Meva yeyilsin");
  }
}

class olma extends Fruit {
  @override
  void Peel() {
    print("Olma qobg'idan tozalandi ");
  }

  @override
  void Eat() {
    print("Olma yeyildi");
  }
}

class Banana extends Fruit {
  @override
  void Peel() {
    print("Banan qobg'idan tozalandi ");
  }

  @override
  void Eat() {
    print("Banan yeyildi");
  }
}

class Apelsin extends Fruit {
  @override
  void Peel() {
    print("Apelsin qobg'idan tozalandi ");
  }

  @override
  void Eat() {
    print("Apelsin yeyildi");
  }
}

void main() {
  Fruit olma1 = olma();
  Fruit banan1 = Banana();
  Fruit apelsen1 = Apelsin();

  olma1.Peel();
  olma1.Eat();
  
  banan1.Peel();
  banan1.Eat();
  
  apelsen1.Peel();
  apelsen1.Eat();
}
