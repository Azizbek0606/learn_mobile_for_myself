class Xodim {
  String ism;
  String familiya;
  String lavozimi;

  Xodim(this.ism, this.familiya, this.lavozimi);

  double HisoblashMaoshi() {
    return 0.0;
  }
}

class TolaVaqtXodim extends Xodim {
  double oylik;

  TolaVaqtXodim(String ism, String familiya, String lavozimi, this.oylik)
      : super(ism, familiya, lavozimi);

  @override
  double HisoblashMaoshi() {
    return oylik;
  }
}

class QismanVaqtXodim extends Xodim {
  int ishSoni;
  double soatlikMablag;
  QismanVaqtXodim(String ism, String familiya, String lavozimi, this.ishSoni,
      this.soatlikMablag)
      : super(ism, familiya, lavozimi);

  @override
  double HisoblashMaoshi() {
    return ishSoni * soatlikMablag;
  }
}

void main() {
  var tolaVaqtXodim = TolaVaqtXodim("John", "Doe", "Menejer", 4000);
  var qismanVaqtXodim = QismanVaqtXodim("Jane", "Smith", "Yardamchi", 20, 15.5);

  print(
      "${tolaVaqtXodim.ism}ning maoshi: ${tolaVaqtXodim.HisoblashMaoshi()} so'm");
  print(
      "${qismanVaqtXodim.ism}ning maoshi: ${qismanVaqtXodim.HisoblashMaoshi()} so'm");
}
