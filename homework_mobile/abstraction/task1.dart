mixin LoggerMixin {
  void logMessage() {
    print("Xabar");
  }
}

class LogMessageClass with LoggerMixin {
  void main_func() {
    print("ikkinchi xabar");
  }
}
void main() {
  LogMessageClass new_message = LogMessageClass();
  new_message.logMessage();
  new_message.main_func();
}
