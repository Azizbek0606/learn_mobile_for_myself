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
class Audio extends Playable {
  @override
  void play() {
    print("audio boshlandi");
  }

  @override
  void pause() {
    print("audio pauza qilndi");
  }

  @override
  void stop() {
    print("audio to'xtadi");
  }
}

void main() {
  Video video1 = Video();
  video1.play();
  video1.pause();
  video1.stop();
  Audio audio1 = Audio();
  audio1.play();
  audio1.pause();
  audio1.stop();
}
