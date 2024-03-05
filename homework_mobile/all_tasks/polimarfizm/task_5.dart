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

void animalSounds(Animal animal) {
  animal.makeSound();
}

void main() {
  Animal dog = Dog();
  Animal cat = Cat();

  dog.makeSound();
  cat.makeSound();

  Dog myDog = Dog();
  myDog.fetch();

  animalSounds(dog);
  animalSounds(cat);
}
