class Instument {
  void Play() {
    print("Chalishni boshla");
  }
}

class Guitar extends Instument {
  String color;
  Guitar(this.color);
  @override
  void Play() {
    print("Gitarni chalib boshladim ");
  }
}

class Piano extends Instument {
  int price;
  Piano(this.price);
  @override
  void Play() {
    print("Pianiani chalib boshladim ");
  }
}

class Drum extends Instument {
  int height;
  Drum(this.height);
  @override
  void Play() {
    print("Drumni chalib boshladim ");
  }
}

void main() {
  Instument guitar = Guitar("Black");
  Instument pianino = Piano(27000);
  Instument drum = Drum(15);
  guitar.Play();
  pianino.Play();
  drum.Play();
}
