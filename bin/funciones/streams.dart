void socket(){
  emitNumbers().listen((value)=> print('Valor: $value'));
}

Stream<int> emitNumbers(){
  return Stream.periodic(Duration(seconds: 1), (value) => value);
}