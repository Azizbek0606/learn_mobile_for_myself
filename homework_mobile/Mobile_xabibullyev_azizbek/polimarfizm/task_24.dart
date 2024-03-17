class Media {
  void Play() {
    print("Media qoyildi");
  }

  void Pause() {
    print("Media toxtatildi");
  }
}

class Audio extends Media {
  int how_long;
  Audio(this.how_long);
  @override
  void Play() {
    print("Audio qoyildi");
  }

  @override
  void Pause() {
    print("Audio toxtatildi");
  }
}

class Video extends Media {
  String name;
  Video(this.name);
  @override
  void Play() {
    print("Video qoyildi");
  }

  @override
  void Pause() {
    print("Video toxtatildi");
  }
}

class Image extends Media {
  int size;
  Image(this.size);
  @override
  void Play() {
    print("Rasm qoyildi qoyildi");
  }

  @override
  void Pause() {
    print("Rasm ob tashandi");
  }
}

void main() {
  Media audio = Audio(12);
  Media video = Video("Dart polimarfizm darsligi");
  Media image = Image(35);

  audio.Play();
  audio.Pause();

  video.Play();
  video.Pause();

  image.Play();
  image.Pause();
}
