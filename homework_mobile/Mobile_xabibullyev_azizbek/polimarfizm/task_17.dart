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

void main() {
  Fruit fruit1 = olma();
  fruit1.Peel();
  fruit1.Eat();
}
