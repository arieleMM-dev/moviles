bool esPrimo(int numero) {
  if (numero < 2) return false;
  for (int divisor = 2; divisor * divisor <= numero; divisor++) {
    if (numero % divisor == 0) return false;
  }
  return true;
}

String calcularFactorial(int numero) {
  if (numero < 0) throw ArgumentError('El factorial no admite negativos.');
  if (numero == 0) return '0! = 1';
  
  BigInt factorial = BigInt.one;
  List<String> pasos = [];
  for (int factor = numero; factor >= 1; factor--) {
    factorial = factorial * BigInt.from(factor);
    pasos.add('$factor');
  }
  return '$numero! = ${pasos.join(' × ')} = $factorial';
}

bool esCapicua(int numero) {
  String texto = numero.toString();
  String invertido = texto.split('').reversed.join();
  return texto == invertido;
}
