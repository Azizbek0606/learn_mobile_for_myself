abstract class DatabaseConnector {
  void connect();
  void disconnect();
}

class PostgreSQLConnector extends DatabaseConnector {
  @override
  void connect() {
    print("Postgres SQL malumotlariga muvifaqqiyatli ulandi");
  }

  @override
  void disconnect() {
    print("Postgres SQL malumotlari bilan muammo mavjud");
  }
}

class MySQLConnector extends DatabaseConnector {
  @override
  void connect() {
    print("MySQL malumotlariga muvifaqqiyatli ulandi");
  }

  @override
  void disconnect() {
    print("MySQL malumotlari bilan muammo mavjud");
  }
}

void main() {
  PostgreSQLConnector check_postgress = PostgreSQLConnector();
  MySQLConnector check_mysql = MySQLConnector();
  check_postgress.disconnect();
  check_mysql.connect();
}
