void mergeSort(List<double> array, int start, int end) {
  if (end <= start) return;

  final midpoint = ((start + end) / 2).floor();

  mergeSort(array, start, midpoint);
  mergeSort(array, midpoint + 1, end);
  merge(array, start, midpoint, end);
}

void merge(List<double> array, int start, int midpoint, int end) {
  int i = 0;
  int j = 0;
  int k = 0;

  final leftLength = midpoint - start + 1;
  final rightLength = end - midpoint;

  final leftArray = List.filled(leftLength, 0.0);
  final rightArray = List.filled(rightLength, 0.0);

  for (i = 0; i < leftLength; i++) {
    leftArray[i] = array[start + i];
  }
  for (j = 0; j < rightLength; j++) {
    rightArray[j] = array[midpoint + 1 + j];
  }

  i = 0;
  j = 0;
  k = start;

  while (i < leftLength && j < rightLength) {
    if (leftArray[i] <= rightArray[j]) {
      array[k] = leftArray[i];
      i++;
    } else {
      array[k] = rightArray[j];
      j++;
    }
    k++;
  }

  while (i < leftLength) {
    array[k] = leftArray[i];
    i++;
    k++;
  }

  while (j < rightLength) {
    array[k] = rightArray[j];
    j++;
    k++;
  }
}
