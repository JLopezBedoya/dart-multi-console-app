import 'funciones/calculadora.dart' as calc;
import 'funciones/asincronia.dart' as asincronia;
import 'funciones/streams.dart' as stream;
import 'dart:io';

void main() {
  List<String> nombreFunciones = ['Calculadora', 'Asincronia', 'Stream'];
  List<void Function()> funciones = [calc.calcular, asincronia.futureAsync, stream.socket];
  String seguir = 'y';
  //Definicio de variables

  print("Cual es tu nombre?");
  String? nombre = stdin
      .readLineSync(); //el ? es para que dart sepa que es posible que haya null

  if (nombre == null || nombre == '') {
    print('Sin nombre? okay, seras anonimo, entonces :3');
    nombre = "Anonimo";
  } else {
    print("Hola, $nombre, un gusto :3");
  }

  do {
    print('Que deseas hoy?');

    int indice = 0; //indice para saber en que valor del array se encuentra
    for (var funcion in nombreFunciones) {
      print('$indice.$funcion');
      indice++;
    }

    int opcion = int.parse(stdin.readLineSync()!); //crear excepcion aqui

    funciones[opcion]();

    print("$nombre, quieres probar otra opcion? y/n");
    seguir = stdin.readLineSync()!; //crear excepcion aqui

  } while (seguir == 'y');

  print('Adios, $nombre, fue un gusto :3');
}
