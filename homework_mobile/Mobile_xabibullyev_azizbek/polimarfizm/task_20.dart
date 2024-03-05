class Instument {
  void Play() {
    print("Chalishni boshla");
  }
}

class Guitar extends Instument {
  @override
  void Play() {
    print("Gitarni chalib boshladim ");
  }
}

class Piano extends Instument {
  @override
  void Play() {
    print("Pianiani chalib boshladim ");
  }
}

class Drum extends Instument {
  @override
  void Play() {
    print("Drumni chalib boshladim ");
  }
}

void main() {
  Instument guitar = Guitar();
  Instument pianino = Piano();
  Instument drum = Drum();
  guitar.Play();
  pianino.Play();
  drum.Play();
}
