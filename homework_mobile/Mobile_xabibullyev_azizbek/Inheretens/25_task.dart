import 'dart:io';

class Book {
  String author;
  String name;

  Book(this.author, this.name);
}

class FictionBook extends Book {
  FictionBook(String author, String name) : super(author, name);
}

class NonfictionBook extends Book {
  NonfictionBook(String mualiff, String name) : super(mualiff, name);
}

void main() {
  print("fiction book author: ");
  String author = stdin.readLineSync()!;
  print("fiction book name: ");
  String book_name = stdin.readLineSync()!;
  FictionBook fictionBook1 = FictionBook(author, book_name);
  print("fiction book author: ");
  String author1 = stdin.readLineSync()!;
  print("fiction book name: ");
  String book_name1 = stdin.readLineSync()!;
  NonfictionBook nonfictionBook = NonfictionBook(author1 , book_name1);

  print("fiction Book author: ${fictionBook1.author}");
  print("fiction Book name: ${fictionBook1.name}");
  print("nonfiction Book author: ${nonfictionBook.author}");
  print("nonfiction Book name: ${nonfictionBook.name}");
}
