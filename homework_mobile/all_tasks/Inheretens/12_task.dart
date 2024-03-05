class Person {
  String name;
  String gender;

  Person(this.name, this.gender);
}

class Male extends Person {
  Male(String name, String gender) : super(name, gender);
}

class Female extends Person {
  Female(String name, String gender) : super(name, gender);
}

void main() {
  Male person1 = Male("Dilshod", "Erkak");
  Female person2 = Female("Jasmina", "Ayol");

  print(person1.name);
  print(person1.gender);
  
  print(person2.name);
  print(person2.gender);
}
