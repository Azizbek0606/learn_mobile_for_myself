class Animal {
  String turi;
  String ovozi;

  Animal(this.turi, this.ovozi);
}

class Cat extends Animal {
  String cat_name;
  Cat(String turi, String ovozi, this.cat_name) : super(turi, ovozi);
}

class Dog extends Animal {
  String dog_name;
  Dog(String turi, String ovozi, this.dog_name) : super(turi, ovozi);
}

void main() {
  Cat zumradpishak = Cat("Nomi : Kalxoz", "Ovozi :  Miovvvv", "Najm");
  Dog zumradkuchuk = Dog("Nomi : Kalxoz", "Ovozi : Wowowow", "To'rtKo'z");
  print(zumradpishak.turi);
  print(zumradpishak.ovozi);

  print(zumradkuchuk.turi);
  print(zumradkuchuk.ovozi);
}
