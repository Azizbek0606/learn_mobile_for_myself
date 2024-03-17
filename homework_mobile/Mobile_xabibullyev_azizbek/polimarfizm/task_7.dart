class Employee {
  void calculateSalary() {
    print("Ishi haqi");
  }
}

class Hodim extends Employee {
  String name;
  Hodim(this.name);
  @override
  void calculateSalary() {
    print("Ish haqi to'landi");
  }
}

void main() {
  Hodim gayrat = Hodim("Azizbek");
  gayrat.calculateSalary();
}
