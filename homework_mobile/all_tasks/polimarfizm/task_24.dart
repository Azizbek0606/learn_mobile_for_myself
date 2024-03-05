class Media {
  void Play() {
    print("Media qoyildi");
  }

  void Pause() {
    print("Media toxtatildi");
  }
}

class Audio extends Media {
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
  Media audio = Audio();
  Media video = Video();
  Media image = Image();

  audio.Play();
  audio.Pause();
  print("***********************************");
  video.Play();
  video.Pause();
  print("***********************************");
  image.Play();
  image.Pause();
}
