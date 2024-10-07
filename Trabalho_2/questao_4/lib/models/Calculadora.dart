class Calculadora {
  double? dividendo;
  double? divisor;

  Calculadora({this.dividendo, this.divisor});

  dividir() {
    try {
      if (divisor == 0) {
        throw Exception("Divisão por zero detectada!");
      }

      double resultado = dividendo! / divisor!;
      print("Resultado: $dividendo / $divisor = $resultado");
    } catch (e) {
      print("Erro: \n  ${e.toString()}");
    }
    return;
  }
}
