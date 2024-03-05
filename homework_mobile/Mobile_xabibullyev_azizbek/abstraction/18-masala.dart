abstract class DatabaseConnector {
  void connect();
  void disconnect();
}

class CheckDatabaseConnecting extends DatabaseConnector {
  @override
  void connect() {
    print("Malumotlar bazasiga muvifaqqiyatli ulandi");
  }

  @override
  void disconnect() {
    print("Malumotr bazasi bilan muammo mavjud");
  }
}

void main() {
  CheckDatabaseConnecting check_data = CheckDatabaseConnecting();
  check_data.connect();
  check_data.disconnect();
}
