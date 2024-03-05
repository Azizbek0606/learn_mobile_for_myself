import 'dart:io';

class Timer {
  int _timer_num;
  Timer(this._timer_num);
  void _timer_func() async {
    for (int i = 1; i <= _timer_num; i++) {
      await Future.delayed(Duration(seconds: 1));
      print(i);
    }
  }

  set change_timer(new_time) {
    _timer_num = new_time;
  }

  void restart() {
    _timer_func();
  }

  void start_timer() {
    _timer_func();
  }
}
void main() {
  print("timer davomiligini kiriting: ");
  int input_time = int.parse(stdin.readLineSync()!);
  Timer new_time = Timer(input_time);
  new_time.start_timer();
}