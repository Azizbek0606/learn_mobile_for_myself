abstract class Employee {
  String name;
  double salary;
  Employee(this.name, this.salary);
  double calculateBonus();
}

class Manager extends Employee {
  Manager(String name, double salary) : super(name, salary);

  @override
  double calculateBonus() {
    return salary * 0.20;
  }
}

class Developer extends Employee {
  Developer(String name, double salary) : super(name, salary);

  @override
  double calculateBonus() {
    return salary * 0.15;
  }
}

void main() {
  Employee alice = Manager('Alice Johnson', 70000);
  Employee bob = Developer('Bob Smith', 60000);

  print('${alice.name} (Manager) bonus: ${alice.calculateBonus()}');
  print('${bob.name} (Developer) bonus: ${bob.calculateBonus()}');
}
