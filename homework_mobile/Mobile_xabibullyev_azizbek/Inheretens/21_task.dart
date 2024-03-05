class Person {
  String name;
  String address;

  Person(this.name, this.address);
}

class Student extends Person {
  Student(String name, String address) : super(name, address);
}

class Teacher extends Person {
  Teacher(String name, String address) : super(name, address);
}

void main() {
  Student student1 = Student("Dilshod", "Surxondaryo Viloyati ");
  Teacher teacher1 = Teacher("Azizbek", "Toshkent shahar");
  print(student1.name);
  print(student1.address);
  
  print(teacher1.name);
  print(teacher1.address);
}
