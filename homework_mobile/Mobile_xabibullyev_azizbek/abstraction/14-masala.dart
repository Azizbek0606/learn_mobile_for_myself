abstract class ErrorAndInfo {
  void log_error();
  void log_info();
}

class LogMessage extends ErrorAndInfo {
  @override
  void log_error() {
    print("Xato Chiqarildi");
  }

  void log_info() {
    print("Malumot Chiqarildi");
  }
}

void main() {
  LogMessage new_message = LogMessage();
  new_message.log_error();
  new_message.log_info();
}
