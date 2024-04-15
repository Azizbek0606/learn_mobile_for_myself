class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print("Hello, my name is $name and I am $age years old.");
  }
}

class Student extends Person {
  String studentID;

  Student(String name, int age, this.studentID) : super(name, age);

  @override
  void introduce() {
    super.introduce();
    print("I'm a student. My name: ${name}. My ID is: ${studentID}.");
  }
}

class Teacher extends Person {
  String subject;

  Teacher(String name, int age, this.subject) : super(name, age);

  @override
  void introduce() {
    super.introduce();
    print("I'm teacher. I teach ${subject}.");
  }
}

void main() {
  Student student1 = Student("Azizbek", 17, "AD230757");
  Student student2 = Student("Nurmuhammad", 20, "AD230756");
  Student student3 = Student("Hasanboy", 19, "AD230755");

  Teacher teacher1 = Teacher("Azamad", 40, "Mathematics");
  Teacher teacher2 = Teacher("Sanjar", 37, "Physics");
  Teacher teacher3 = Teacher("Alisher", 42, "Chemistry");

  student1.introduce();
  student2.introduce();
  student3.introduce();

  teacher1.introduce();
  teacher2.introduce();
  teacher3.introduce();
}