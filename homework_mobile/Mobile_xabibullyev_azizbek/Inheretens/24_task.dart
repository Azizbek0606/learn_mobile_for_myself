import 'dart:io';
class Animal {
  String type;
  String voice;

  Animal(this.type, this.voice);
}

class Cat extends Animal {
  Cat(String type, String voice) : super(type, voice);
}

class Dog extends Animal {
  Dog(String type, String voice) : super(type, voice);
}

void main() {
  print("Animal type");
  String type = stdin.readLineSync()!;
  print("Animal voice");
  String voice = stdin.readLineSync()!;
  print("Animal type");
  String type1 = stdin.readLineSync()!;
  print("Animal voice");
  String voice1 = stdin.readLineSync()!;

  Cat cat1 = Cat(type, voice);
  Dog dog1 = Dog(type1 , voice1);

  print("animal type: ${cat1.type}");
  print("animal voice: ${cat1.voice}");
  
  print("animal1 type: ${dog1.type}");
  print("animal1 voice: ${dog1.voice}");
}
