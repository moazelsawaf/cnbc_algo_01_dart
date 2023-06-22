List<double> segregateNumbersLinear(List<double> array) {
  final n = <double>[];
  final p = <double>[];

  for (int i = 0; i < array.length; i++) {
    if (array[i] < 0) {
      n.add(array[i]);
    } else {
      p.add(array[i]);
    }
  }

  for (final number in p) {
    n.add(number);
  }

  return n;
}
