import 'dart:io';

class Book {
  String _book_name;
  String _Book_title;
  int _book_year;
  Book(this._book_name, this._Book_title, this._book_year);

  get get_book_name => this._book_name;
  get get_book_title => this._Book_title;
  get get_book_year => this._book_year;

  set set_book_name(new_book) {
    if (new_book != "") {
      this._book_name = new_book;
    } else {
      this._book_name = _book_name;
    }
  }
  
  set set_book_title(new_title) {
    if (new_title != "") {
      this._Book_title = new_title;
    } else {
      this._book_name = this._Book_title;
    }
  }

  set set_book_year(new_year) {
    if (new_year != "") {
      this._book_year = new_year;
    } else {
      this._book_year = this._book_year;
    }
  }
}

void main() {
  print("Kitob nomi: ");
  String name = stdin.readLineSync()!;
  print("Kitob yozuvchisi: ");
  String title = stdin.readLineSync()!;
  print("Kitob ishlab chiqarilgan vaqt: ");
  int year = int.parse(stdin.readLineSync()!);
  Book new_book = Book(name, title, year);
  print("kitob nomi: ${new_book.get_book_name}");
  print("Kitob ishlab chiqarilgan sana: ${new_book.get_book_year}");
  print("Kitob yozuvchisi: ${new_book.get_book_title}");
}
