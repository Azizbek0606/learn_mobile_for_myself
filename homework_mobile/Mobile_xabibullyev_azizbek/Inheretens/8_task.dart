class Person {
  String name;
  String address;

  Person(this.name, this.address);
}

class Student extends Person {
  int age;
  int ball;
  Student(String name, String address, this.age, this.ball)
      : super(name, address);
}

class Employee extends Person {
  int expriment;
  Employee(String name, String address , this.expriment) : super(name, address);
}

void main() {
  Student student1 = Student("Azizbek", "Andijon Asaka" ,17 , 5);
  Employee employee1 = Employee("Umar", "Nukus" , 10);
  print(student1.name);
  print(student1.address);

  print(employee1.name);
  print(employee1.address);
}
