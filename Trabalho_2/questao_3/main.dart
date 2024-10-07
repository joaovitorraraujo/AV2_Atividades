void main() {
  List array = [0, 1, 2, 3, 4];

  try {
    print("A posicição selecionanda é:  ${array[5]}.");
  } catch (e) {
    print("erro: $e");
  }
}

//Em dart ao tentar alcançar um indice fora dos limites de uma array, uma exceção RangeError é lançada.
