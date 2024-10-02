import 'Contribuinte.dart';

class Juridico extends Contribuinte {
  String? _cnpj;
  double? _gastosPessoal;
  double? _gastosEqui;

  Juridico(
    double rendaBruta,
    String nome,
    String cnpj,
    double gastosPessoal,
    double gastosEqui,
  ) : super(rendaBruta, nome) {
    setCnpj = cnpj;
    setGastosPessoal = gastosPessoal;
    setGastosEqui = gastosEqui;
  }

  void set setCnpj(String cnpj) {
    if (cnpj.length == 18) {
      this._cnpj = cnpj;
    } else {
      print("Formato de cnpj invalido!");
    }
  }

  void set setGastosPessoal(double gastosPe) {
    if (gastosPe > 0) {
      this._gastosPessoal = gastosPe;
    }
  }

  void set setGastosEqui(double gastosEqui) {
    if (gastosEqui > 0) {
      this._gastosEqui = gastosEqui;
    }
  }

  void status() {
    print(
        "Nome: ${super.getNome}\n Renda Bruta: R\$${super.getRenda}\n CNPJ: ${this._cnpj}");
  }

  @override
  fornecaImposto() {
    double liquida = super.getRenda - _gastosEqui! - _gastosPessoal!;
    double impostos;

    if (liquida <= 100000) {
      //no slide da atividade estava acima de 100.000 porem n faz sentido acho que esta errado la
      impostos = liquida * 0.05;
      print(
          "Imposto de R\$${impostos} sobre o valor de renda: R\$${super.getRenda}");
    } else if (liquida > 100000 && liquida <= 200000) {
      impostos = liquida * 0.1;
      print(
          "Imposto de R\$${impostos} sobre o valor de renda: R\$${super.getRenda}");
    } else if (liquida > 200000) {
      impostos = liquida * 0.30;
      print(
          "Imposto de R\$${impostos} sobre o valor de renda: R\$${super.getRenda}");
    }
  }
}
