class Instument {
  void Play() {
    print("Chalishni boshla");
  }
}

class insturment1 extends Instument {
  @override
  void Play() {
    print("insturmentni chalib boshladim ");
  }
}

void main() {
  Instument forinsturment = insturment1();
  forinsturment.Play();
}
