int binarySearchRecursive(List<double> x, double key, int start, int end) {
  if (start > end) return -1;

  final midpoint = (start + end) ~/ 2;

  if (x[midpoint] == key) {
    return midpoint;
  } else if (key > x[midpoint]) {
    return binarySearchRecursive(x, key, midpoint + 1, end);
  } else {
    return binarySearchRecursive(x, key, start, midpoint - 1);
  }
}
