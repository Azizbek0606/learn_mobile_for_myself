class Media {
  void Play() {
    print("Media qoyildi");
  }

  void Pause() {
    print("Media toxtatildi");
  }
}

class Media1 extends Media {
  String video_title;
  Media1(this.video_title);
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
  Media1 media = Media1("PDP universiteti qabul jarayonlaridan lavhalar");
  media.Play();
  media.Pause();
}
