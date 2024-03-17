class Fruit {
  void Peel() {}

  void Eat() {}
}

class Olma extends Fruit {
  String color;
  Olma(this.color);
  @override
  void Peel() {
    print("Olma tozalandi ");
  }

  @override
  void Eat() {
    print("Olma yeyildi");
  }
}

void main() {
  Fruit fruit1 = Olma("qizil");
  fruit1.Peel();
  fruit1.Eat();
}
