class Food {
  void cook() {
    print("Ovqat tayolab boshlandi");
  }
}

class Fastfood extends Food {
  @override
  void cook() {
    print("Fastfood tayyorlandi");
  }
}

class HealthyFood extends Food {
  @override
  void cook() {
    print("Sog'liq uchun foydali ovqat tayyorlandi");
  }
}

void main() {
  Food fastfood = Fastfood();
  Food healthyfood = HealthyFood();
  fastfood.cook();
  healthyfood.cook();
}
