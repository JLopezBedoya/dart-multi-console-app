void futureAsync() async
{
  print("Inicio");

  try {

    final value = await httpGet('hola');
    print(value);
  
  } catch (err) {
  
    print("ERROR: $err");
  
  } finally{
  
    print("Fin del programa");
  
  }
}

Future <String> httpGet( String url ) async
{
  await Future.delayed(Duration(seconds: 5));
  //throw 'ERROR';
  return "Holiwis";
}