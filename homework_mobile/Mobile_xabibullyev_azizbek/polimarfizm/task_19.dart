class Instument {
  void Play() {
    print("foydalanish");
  }
}

class Instrument1 extends Instument {
  String qanday_instrument;
  Instrument1(this.qanday_instrument);
  @override
  void Play() {
    print("insturment chalina boshlandi ");
  }
}

void main() {
  Instument forinsturment = Instrument1("gitara");
  forinsturment.Play();
}
