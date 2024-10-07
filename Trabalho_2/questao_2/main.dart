void main() {
  try {
    String numberString = '10';

    try {
      int numeroInteiro = int.parse(numberString);
      print("Você inseriu um número inteiro: $numeroInteiro");
    } catch (e) {
      double numeroPontoFlutuante = double.parse(numberString);
      print("Você inseriu um número de ponto flutuante: $numeroPontoFlutuante");
    }
  } catch (e) {
    print("Erro: A string inserida não é um número válido.");
  }
}
