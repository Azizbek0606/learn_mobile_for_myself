abstract class LogCansolAndFile {
  void console_logger();
  void file_logger();
}

class LogMethod extends LogCansolAndFile {
  @override
  void console_logger() {
    print("Consolga xabar chiqarildi");
  }

  void file_logger() {
    print("Fayl yaratildi");
  }
}

void main() {
  LogMethod new_message = LogMethod();
  new_message.console_logger();
  new_message.file_logger();
}
