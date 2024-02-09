// OOP >
// Inheretens
// Polimarfizm
// Abstraction
// Incopsulation
////////////////////////////////////////////////////////
// Stake Memory > oxirgi qo'shilgan malumot yuqoriga yoziladi funksiya ichida o'zgaruvchi ochilsa stake xotirada saqlanadi
//va kod yuqoridan pastga oqilishi davomida funksiya ichiga yetganda stakega o'zgaruvchini yaratadi va funkiya vazifaasi tugagach stake xotiradan o'zgaruvchio'chirib tashlanadi
// ____________________________________________________
// class hit hotirani band qiladi  bu doimiy xotira
// ////////////////////////////////////////////////////
class Book {
  String Title;
  String Author;

  Book(this.Title, this.Author);
}

class FictionBook extends Book {
  bool IsFictionBook;

  FictionBook(String Title, String Author, this.IsFictionBook)
      : super(Title, Author);

  void get_author() {
    print(this.Author);
  }
}

class NonFictionBook extends Book {
  NonFictionBook(String Title, String Author) : super(Title, Author);

  void get_title() {
    print(this.Title);
  }
}

void main() {
  FictionBook fiction = FictionBook("O'tgan kunlar", "O'tkir Hoshimov", false);
  print('\n\n\nis it fiction:${fiction.IsFictionBook}');
  fiction.get_author();
  var nonfiction = NonFictionBook("Qiyomat", "Chingiz Aytmatov");
  print('\n\n\n${nonfiction.Author}');
  nonfiction.get_title();
}
