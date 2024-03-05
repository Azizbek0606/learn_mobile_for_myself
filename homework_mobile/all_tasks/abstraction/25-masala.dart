abstract class Notification {
  void send_message();
}

class SMSNotofication extends Notification {
  @override
  void send_message() {
    print("SMS xabari yuborildi");
  }
}
class EmailNotification extends Notification{
  @override
  void send_message() {
    print("Email xabar yuborildi");
  }
}
void main() {
  SMSNotofication new_sms = SMSNotofication();
  EmailNotification new_email = EmailNotification();
  new_sms.send_message();
  new_email.send_message();
}
