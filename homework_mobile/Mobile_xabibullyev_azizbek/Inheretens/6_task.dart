class Book {
  String muallif;
  String sarlavha;

  Book(this.muallif, this.sarlavha);
}

class FictionBook extends Book {
  int page;
  FictionBook(String muallif, String sarlavha, this.page)
      : super(muallif, sarlavha);
}

class NonfictionBook extends Book {
  int page;
  NonfictionBook(String mualiff, String sarlavha , this.page) : super(mualiff, sarlavha);
}

void main() {
  FictionBook shumbola = FictionBook("G'afur G'ulom", "Shum bola asari " , 300);
  NonfictionBook gulverning_sayohatlari =
      NonfictionBook("Stiff", "Gulverning Sayohatlari" , 230);

  print(shumbola.muallif);
  print(shumbola.sarlavha);

  print(gulverning_sayohatlari.muallif);
  print(gulverning_sayohatlari.sarlavha);
}
