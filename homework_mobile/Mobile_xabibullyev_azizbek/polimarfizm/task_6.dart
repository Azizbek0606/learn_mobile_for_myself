class Animal {
  void makeSound() {
    print('Hamma Ovozlar');
  }
}

class Dog extends Animal {
  String dog_name;
  Dog(this.dog_name);
  @override
  void makeSound() {
    print('Dog :  Woof! Woof!');
  }
}

class Cat extends Animal {
  String cat_type;
  Cat(this.cat_type);
  @override
  void makeSound() {
    print('Cat : Meow! Meow!');
  }
}

class Cow extends Animal {
  int count_milk;
  Cow(this.count_milk);
  @override
  void makeSound() {
    print('Cow : Muuu ! muo! ');
  }
}

void main() {
  Animal dog = Dog("to'rt ko'z");
  Animal cat = Cat("malla");
  Animal cow = Cow(5);

  dog.makeSound();
  cat.makeSound();
  cow.makeSound();
}
