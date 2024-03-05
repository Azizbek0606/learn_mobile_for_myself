class Book {
  String muallif;
  String sarlavha;

  Book(this.muallif, this.sarlavha);
}

class FictionBook extends Book {
  FictionBook(String muallif, String sarlavha) : super(muallif, sarlavha);
}

class NonfictionBook extends Book {
  NonfictionBook(String mualiff, String sarlavha) : super(mualiff, sarlavha);
}

void main() {
  FictionBook shumbola = FictionBook("G'afur G'ulom", "Shum bola asari ");
  NonfictionBook gulverning_sayohatlari =
      NonfictionBook("Stiff", "Gulverning Sayohatlari");

  print(shumbola.muallif);
  print(shumbola.sarlavha);
  
  print(gulverning_sayohatlari.muallif);
  print(gulverning_sayohatlari.sarlavha);
}
