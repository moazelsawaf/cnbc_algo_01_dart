void segregateNumbers(List<double> array, int start, int end) {
  if (end <= start) return;

  final mid = (end + start) ~/ 2;

  segregateNumbers(array, start, mid);
  segregateNumbers(array, mid + 1, end);
  merge(array, start, mid, end);
}

void merge(List<double> array, int start, int mid, int end) {
  int i, j, k;

  final leftLength = mid - start + 1;
  final rightLength = end - mid;

  final leftArray = List.filled(leftLength, 0.0);
  final rightArray = List.filled(rightLength, 0.0);

  for (i = 0; i < leftLength; i++) {
    leftArray[i] = array[start + i];
  }
  for (j = 0; j < rightLength; j++) {
    rightArray[j] = array[mid + 1 + j];
  }

  i = 0;
  j = 0;
  k = start;

  while (i < leftLength && leftArray[i] < 0) {
    array[k] = leftArray[i];
    i++;
    k++;
  }

  while (j < rightLength && rightArray[j] < 0) {
    array[k] = rightArray[j];
    j++;
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
