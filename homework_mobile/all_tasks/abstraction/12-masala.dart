abstract class Playable {
  void play();
  void pause();
  void stop();
}

class Video extends Playable {
  @override
  void play() {
    print("video boshlandi");
  }

  @override
  void pause() {
    print("video pauza qilndi");
  }

  @override
  void stop() {
    print("video to'xtadi");
  }
}

void main() {
  Video video1 = Video();
  video1.play();
  video1.pause();
  video1.stop();
}
