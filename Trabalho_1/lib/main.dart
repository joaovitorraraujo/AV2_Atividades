import 'models/Fisico.dart';
import 'models/Juridico.dart';

void main() {
  //Pessoa Fisica
  var pf = Fisico(20000, "", 4, "123.123.223-14", 1000, 1000);

  pf.fornecaImposto();
  pf.status();

  print("==================================");
  //Pessoa Juridica
  var pj = Juridico(100000, "Tavares", "07.322.883/0001-03", 10000, 10000);

  pj.fornecaImposto();
  pj.status();
}
