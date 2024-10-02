import 'models/Book.dart';
import 'models/Library.dart';

void main() {
  print("===========CADASTRANDO LIVROS===========");
  //Cadastrando livros
  var b1 = Book("A procura da verdade", '');
  b1.status = 'AVAILABLE';

  var b2 = Book("A mentira", '');
  b2.status = 'LENT';

  var b3 = Book("Código limpo", '');
  b3.status = 'LOST';

  print("===========ADICIONANDO NA LIVRARIA===========");
  //adicionanda na livraria
  var library = Library();
  library.addBook(b1);
  library.addBook(b2);
  library.addBook(b3);

  print("===========ALUGANDO OS LIVROS===========");
  //alugando os livros
  library.rentBook(b1);
  library.rentBook(b2);
  library.rentBook(b3);
}
