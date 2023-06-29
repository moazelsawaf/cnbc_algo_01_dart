int binarySearch(List<double> x, double key) {
  int start = 0;
  int end = x.length - 1;

  while (start <= end) {
    final midpoint = (start + end) ~/ 2;

    if (x[midpoint] == key) {
      return midpoint;
    } else if (key > x[midpoint]) {
      start = midpoint + 1;
    } else {
      end = midpoint - 1;
    }
  }

  return -1;
}

void hello() => print('Hello, World!');
