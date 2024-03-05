abstract class Define {
  void Start() {}
  void Stop() {}
}

class Car extends Define {
  @override
  void Start() {
    print("Moshina Ishga tushdi");
    super.Start();
  }

  @override
  void Stop() {
    print("Moshina Ishlasdan toxtadi");
    super.Stop();
  }
}

void main() {
  var car1 = Car();
  car1..Start();
  car1.Stop();
}
