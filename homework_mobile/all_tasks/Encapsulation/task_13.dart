import 'dart:math';

class Random_num {
  int _qiymat = 0;
  Random _rnd = Random();

  void get_random_num() {
    _qiymat = _rnd.nextInt(6) + 1;
  }

  int get result => _qiymat;
}

void main() {
  Random_num random_num = Random_num();
  random_num.get_random_num();
  print('Tanlangan tasodifiy qiymati: ${random_num.result}');
  random_num.get_random_num();
  print('Qayta Tanlangan tasodifiy qiymati: ${random_num.result}');
}