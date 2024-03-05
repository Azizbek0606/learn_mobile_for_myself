class Employee {
  void calculateSalary() {
    print("Ishi haqi hisoblansin");
  }
}

class Gayrat extends Employee {
  @override
  void calculateSalary() {
    print("Ish haqi to'landi");
  }
}

void main() {
  Employee gayrat = Gayrat();
  gayrat.calculateSalary();
}
