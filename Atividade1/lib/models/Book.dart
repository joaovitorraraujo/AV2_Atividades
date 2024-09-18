class Book {
  String name;
  String _status;

  Book(this.name, [this._status = 'AVAILABLE']);

  String get status => _status;

  set status(String newStatus) {
    if (newStatus == 'AVAILABLE' ||
        newStatus == 'LENT' ||
        newStatus == 'LOST') {
      print(
          "${name} cadastrado com sucesso! Status atualizado para ${newStatus}!");
      _status = newStatus;
    } else {
      print("Insira um status valido: AVAILABLE, LENT OU LOST");
    }
  }
}

/*
Atividade de Dart.

Crie uma classe Library 
a. A classe Library contem uma lista de books -> ArrayList<Book>
b. Book Contem Status que pode ser: [available,lent,lost]
c. Library Possui metodo para adicionar um livro: addBook(Book){...}
d. Library Possui metodo para emprestar o livro: rentBook(Book){...}
  i. O usuario so pode alugar se o status do livro estiver AVAILABLE
  ii. Ao alugar, deve ser trocado para: lent
*/