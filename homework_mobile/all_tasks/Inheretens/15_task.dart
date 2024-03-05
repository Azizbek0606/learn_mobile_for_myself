class Bird {
  String speises;
  int migration_status;

  Bird(this.speises, this.migration_status);
}

class Swallow extends Bird {
  Swallow(String speises, int migration_status)
      : super(speises, migration_status);
}

class Penguin extends Bird {
  Penguin(speises, int migration_status) : super(speises, migration_status);
}

void main() {
  Swallow swallow1 = Swallow("qora qaldirg'och", 12);
  Penguin penguin1 = Penguin("Bref Pingvin", 15);
  print(swallow1.speises);
  print("${swallow1.migration_status}%");
  
  print(penguin1.speises);
  print("${penguin1.migration_status}%");
}
