import "dart:io";
import 'dart:core';

main() {
  List<String> Produtos = [];
  bool condicao = true;
  while (condicao) {
    print("===ADICIONE UM PRODUTO===");
    String text = stdin.readLineSync() ?? "";
    if (text == "sair") {
      print("===PROGRAMA ENCERRADO===");
      condicao = false;
    } else if (text == "imprimir") {
      for (var i = 0; i < Produtos.length; i++) {
        print("ITEM $i - ${Produtos[i]}");
      }
    } else if (text == "remover") {
      print("=== qual item deseja remover?");
      for (var i = 0; i < Produtos.length; i++) {
        print("ITEM $i - ${Produtos[i]}");
      }
      int item = int.parse(stdin.readLineSync() ?? "");
      Produtos.removeAt(item);
      print("===ITEM REMOVIDO===");
    } else {
      Produtos.add(text);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}
