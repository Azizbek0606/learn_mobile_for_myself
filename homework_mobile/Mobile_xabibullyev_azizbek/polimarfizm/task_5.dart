class Animal {
  void makeSound() {
    print('Some generic sound');
  }
}

class Dog extends Animal {
  String dog_name;
  Dog(this.dog_name);
  @override
  void makeSound() {
    print('Woof! Woof!');
  }

  void fetch() {
    print('Fetching the ball!');
  }
}

class Cat extends Animal {
  String cat_type;
  Cat(this.cat_type);
  @override
  void makeSound() {
    print('Meow! Meow!');
  }

  void scratch() {
    print('Scratching furniture...');
  }
}

void main() {
  Dog dog = Dog("qoplon");
  Cat cat = Cat("malla");

  dog.makeSound();
  dog.fetch();

  cat.scratch();
  cat.makeSound();
}
