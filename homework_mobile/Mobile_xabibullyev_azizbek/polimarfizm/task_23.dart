class Media {
  void Play() {
    print("Media qoyildi");
  }

  void Pause() {
    print("Media toxtatildi");
  }
}

class media1 extends Media {
  @override
  void Play() {
    print("Media1 qoyildi");
  }

  @override
  void Pause() {
    print("Media1 toxtatildi");
  }
}

void main() {
  Media media = media1();
  media.Play();
  media.Pause();
}
