abstract class Employee {
  String name;
  double salary;
  Employee(this.name, this.salary);
  double calculateBonus();
}

class FullTimeEmployee extends Employee {
  FullTimeEmployee(String name, double salary) : super(name, salary);

  @override
  double calculateBonus() {
    return salary * 0.10;
  }
}

class PartTimeEmployee extends Employee {
  PartTimeEmployee(String name, double salary) : super(name, salary);

  @override
  double calculateBonus() {
    return salary * 0.05;
  }
}
void main() {
  Employee john = FullTimeEmployee('John Doe', 50000);
  Employee jane = PartTimeEmployee('Jane Doe', 20000);

  print('${john.name} bonus: ${john.calculateBonus()}');
  print('${jane.name} bonus: ${jane.calculateBonus()}');
}


