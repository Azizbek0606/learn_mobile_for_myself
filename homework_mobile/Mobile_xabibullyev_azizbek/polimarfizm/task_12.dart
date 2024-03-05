class Food {
  void cook() {
    print("Ovqat tayolab boshlandi");
  }
}

class Pizza extends Food {
  @override
  void cook() {
    print("Pitsa tayyorlandi");
  }
}

class Burger extends Food {
  @override
  void cook() {
    print("Burger tayyor bo'ldi");
  }
}

class Makaron extends Food {
  @override
  void cook() {
    print("Makaron tayyorlandi");
  }
}

void main() {
  Food pizza = Pizza();
  Food burger = Burger();
  Food makron = Makaron();

  pizza.cook();
  burger.cook();
  makron.cook();
}
