class Person {
  int age;
  Person(this.name, this.age);
  String name;
}

class Student extends Person {
  int ball;
  Student(String name, int age, this.ball) : super(name, age);
}

class Teacher extends Person {
  int expriment;
  Teacher(
    String name,
    int age,
    this.expriment
  ) : super(name, age);
}

void main() {
  Student student1 = Student("Azizbek", 17 , 5);
  Teacher teacher1 = Teacher("Akbar", 35, 5);

  print(student1.name);
  print(student1.age);

  print(teacher1.name);
  print(teacher1.age);
}
