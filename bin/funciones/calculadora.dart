import 'dart:io';

void calcular() {
  print('Ingrese el primer número:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Ingrese el segundo número:');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Ingrese el operador (+, -, *, /):');
  String operador = stdin.readLineSync()!;

  double resultado;

  switch (operador) {
    case '+':
      resultado = num1 + num2;
      break;
    case '-':
      resultado = num1 - num2;
      break;
    case '*':
      resultado = num1 * num2;
      break;
    case '/':
      resultado = num1 / num2;
      break;
    default:
      print('Operador no válido');
      resultado = double.nan;
  }

  print("El resultado es: $resultado");
}
