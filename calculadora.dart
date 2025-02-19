import 'dart:io';

void main() {
  print('Digite o primeiro número:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Digite o segundo número:');
  double num2 = double.parse(stdin.readLineSync()!);

  print("Escolha a operação (adição: + | subtração: - | multiplicação: * | divisão: /):");
  String operacao = stdin.readLineSync()!;

  double resultado = (operacao == "+") 
      ? num1 + num2 
      : (operacao == "-") 
      ? num1 - num2 
      : (operacao == "*") 
      ? num1 * num2 
      : (operacao == "/" && num2 != 0) 
      ? num1 / num2 
      : throw Exception("Operação inválida ou divisão por zero");

  print("O resultado é: $resultado");
}
