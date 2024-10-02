import 'Book.dart';

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print("Livro ${book.name} adicioanado a biblioteca!");
  }

  void rentBook(Book book) {
    if (book.status == 'AVAILABLE') {
      print('O livro ${book.name} foi alugado com sucesso!');
      book.status = 'LENT';
    } else {
      print('O livro ${book.name} está indisponível!');
    }
  }
}
