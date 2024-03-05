class Animal {
  void makeSound() {
    print('Some generic sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof! Woof!');
  }

  void fetch() {
    print('Fetching the ball!');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow! Meow!');
  }

  void scratch() {
    print('Scratching furniture...');
  }
}

void main() {
  Dog dog = Dog();
  Cat cat = Cat();

  dog.makeSound();
  dog.fetch();

  cat.scratch();
  cat.makeSound();
}
