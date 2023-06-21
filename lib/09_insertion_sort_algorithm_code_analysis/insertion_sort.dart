void insertionSort(List<double> x) {
  for (int i = 1; i < x.length; i++) {
    final key = x[i];
    int j;

    for (j = i - 1; j >= 0; j--) {
      if (x[j] > key) {
        x[j + 1] = x[j];
      } else {
        break;
      }
    }

    x[j + 1] = key;
  }
}
