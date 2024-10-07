void main() {
  int x = 10;
  int a = 0;

  try {
    if (a == 0) {
      throw Exception("Divisão por zero detectada!");
    }
    //Em Dart, ao dividir um número por zero, o resultado padrão para números de ponto flutuante é "Infinity" e não lança automaticamente uma exceção.
    //Então criei uma Exception explicita para tratar o erro e passar para o catch
    double resultado = x / a;
    print("Resultado da divisão: $x / $a = $resultado");
  } catch (e) {
    print("Erro: ${e.toString()}");
  }

  print('Bye!');
}
