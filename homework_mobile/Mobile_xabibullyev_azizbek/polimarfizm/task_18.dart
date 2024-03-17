class Fruit {
  void Peel() {
    print("Mevani tozalansin");
  }

  void Eat() {
    print("Meva yeyilsin");
  }
}

class Olma extends Fruit {
  String color;
  Olma(this.color);
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
  int price;
  Banana(this.price);
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
  String country;
  Apelsin(this.country);
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
  Fruit olma1 = Olma("qizil");
  Fruit banan1 = Banana(12000);
  Fruit apelsen1 = Apelsin("O'zbekiston");

  olma1.Peel();
  olma1.Eat();

  banan1.Peel();
  banan1.Eat();

  apelsen1.Peel();
  apelsen1.Eat();
}
