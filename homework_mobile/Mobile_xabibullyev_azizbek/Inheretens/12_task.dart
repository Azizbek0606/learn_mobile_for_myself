class Person {
  String name;
  String gender;

  Person(this.name, this.gender);
}

class Male extends Person {
  String work;
  Male(String name, String gender, this.work) : super(name, gender);
}

class Female extends Person {
  String work;
  Female(String name, String gender , this.work) : super(name, gender);
}

void main() {
  Male person1 = Male("Dilshod", "Erkak" , "Developer");
  Female person2 = Female("Jasmina", "Ayol" , "Designer");

  print(person1.name);
  print(person1.gender);

  print(person2.name);
  print(person2.gender);
}
