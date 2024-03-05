class Person {
  String name;
  String birthdate;
  Person(this.name, this.birthdate);
}

class Student extends Person {
  Student(String name, String birthdate) : super(name, birthdate);
}

class Employee extends Person {
  Employee(String name, String birthdate) : super(name, birthdate);
}

void main() {
  Student student1 = Student("Dilshod", "2006.28.07");
  Employee employee1 = Employee("G'ayrat", "2006.07.07");
  print(student1.name);
  print(student1.birthdate);
  
  print(employee1.name);
  print(employee1.birthdate);
}
