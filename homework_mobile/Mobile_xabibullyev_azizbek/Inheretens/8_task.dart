class Person {
  String name;
  String address;

  Person(this.name, this.address);
}

class Student extends Person {
  Student(String name, String address) : super(name, address);
}

class Employee extends Person {
  Employee(String name, String address) : super(name, address);
}

void main() {
  Student student1 = Student("Dilshod", "Surxondaryo Viloyati ");
  Employee employee1 = Employee("Azizbek", "Toshkent shahar");
  print(student1.name);
  print(student1.address);
  
  print(employee1.name);
  print(employee1.address);
}
