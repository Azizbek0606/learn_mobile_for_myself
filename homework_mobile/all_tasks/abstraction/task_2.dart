mixin LoggerMixin {
  void log_message() {
    print("Birinchi xabar");
  }
}

class FileLogger with LoggerMixin {
  void second_log_message() {
    print("faylga malumot biriktirildi");
  }
}

void main() {
  FileLogger get_message = FileLogger();
  get_message.log_message();
  get_message.second_log_message();
}
