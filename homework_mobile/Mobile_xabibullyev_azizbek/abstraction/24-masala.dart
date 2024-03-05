abstract class Notification {
  void send_message();
}

class SendMessage extends Notification {
  @override
  void send_message() {
    print("xabar yuborildi");
  }
}

void main() {
  SendMessage new_message = SendMessage();
  new_message.send_message();
}
