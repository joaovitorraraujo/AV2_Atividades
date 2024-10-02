abstract class Contribuinte {
  double? _rendaBrutaAnual;
  String? _nome;

  Contribuinte(double rendaBruta, String nome) {
    setRenda = rendaBruta;
    setNome = nome;
  }

  double get getRenda {
    return _rendaBrutaAnual!;
  }

  String get getNome {
    return _nome!;
  }

  void set setRenda(double renda) {
    if (renda > 0) {
      this._rendaBrutaAnual = renda;
    } else {
      print("Renda precisa ser maior que 0");
    }
  }

  void set setNome(String nome) {
    if (nome.isEmpty) {
      this._nome = nome;
    } else {
      print("Digite um nome para o contribuinte!");
    }
  }

  fornecaImposto();
}
