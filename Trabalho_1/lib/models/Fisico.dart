import 'Contribuinte.dart';

class Fisico extends Contribuinte {
  int?
      _numeroDep; // por conta do null satefy adicionado nas ultimas versões do dart adicionei o "?" para determinar que esse atributo talvez seja nulo e "!"(quando chamar a variavel) para determinar que ele não será nulo.
  String? _cpf;
  double? _gastosSaude;
  double? _gastosEduca;

  Fisico(
    double rendaBruta,
    String nome,
    int numeroDep,
    String cpf,
    double gastosSaude,
    double gastosEduca,
  ) : super(rendaBruta, nome) {
    setNumeroDep = numeroDep;
    setCpf = cpf;
    setGastos(gastosSaude, gastosEduca);
  }

  void set setNumeroDep(int numeroDep) {
    if (numeroDep >= 0 && numeroDep <= 4) {
      this._numeroDep = numeroDep;
    } else {
      print("Só é permitido até 4 dependentes!");
    }
  }

  void set setCpf(String cpf) {
    if (cpf.length == 14) {
      this._cpf = cpf;
    } else {
      print("Formato de cpf invalido!");
    }
  }

  void setGastos(double gastosSaude, double gastosEduca) {
    if (gastosSaude >= 0 && gastosEduca >= 0) {
      this._gastosSaude = gastosSaude > 5000 ? 5000 : gastosSaude;
      this._gastosEduca = gastosEduca > 2500 ? 2500 : gastosEduca;
    } else {
      print("Os gastos precisam ser maiores ou iguais a 0!");
    }
  }

  void status() {
    print(
        "Nome: ${super.getNome}\n Renda Bruta: R\$${super.getRenda}\n CPF: ${this._cpf}");
  }

  @override
  fornecaImposto() {
    double abatDep = _numeroDep! * 1500;
    double liquida = super.getRenda - _gastosEduca! - _gastosSaude! - abatDep;
    double impostos;

    if (liquida <= 10000) {
      print("Isento de impostos");
    } else if (liquida > 10000 && liquida <= 20000) {
      impostos = liquida * 0.1;
      print(
          "Imposto de R\$${impostos} sobre o valor de renda: R\$${super.getRenda}");
    } else if (liquida > 20000) {
      impostos = liquida * 0.25;
      print(
          "Imposto de R\$${impostos} sobre o valor de renda: R\$${super.getRenda}");
    }
  }
}
