class Food {
  void cook() {}
}

class Pizza extends Food {
  String type_pizza;
  Pizza(this.type_pizza);
  @override
  void cook() {}
}

class Burger extends Food {
  int count_meat;
  Burger(this.count_meat);
  @override
  void cook() {
    print("Burger tayyor bo'ldi");
  }
}

void main() {
  Pizza pizza = Pizza("qo'ziqorinli");
  Burger burger = Burger(2);

  pizza.cook();
  burger.cook();
}
