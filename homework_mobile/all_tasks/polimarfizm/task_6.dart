class Animal {
  void makeSound() {
    print('Hamma Ovozlar');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog :  Woof! Woof!');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Cat : Meow! Meow!');
  }
}

class Cow extends Animal {
  @override
  void makeSound() {
    print('Cow : Muuu ! muo! ');
  }
}
void main() {
  Animal dog = Dog();
  Animal cat = Cat();
  Animal cow = Cow();

  dog.makeSound();
  cat.makeSound();
  cow.makeSound();
}
