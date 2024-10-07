void main() {
  try {
    dynamic value = true;
    value++;
  } catch (e, s) {
    print("Exception: $e");
    print("Stack trace: $s");
  }

  // O Stack Trace representado pelo "s" no catch  ajuda a entender o caminho que o código seguiu até o ponto em que ocorreu a exceção.Quando ocorre uma exceção, o stack trace mostra a origem do erro e a série de chamadas de função que levaram até ele, facilitando a depuração.
}
