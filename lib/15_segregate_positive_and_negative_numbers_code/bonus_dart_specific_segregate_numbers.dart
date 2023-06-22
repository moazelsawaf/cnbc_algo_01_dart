void segregateNumbers(List<double> array, int start, int end) {
  if (end <= start) return;

  final mid = (end + start) ~/ 2;

  segregateNumbers(array, start, mid);
  segregateNumbers(array, mid + 1, end);
  _merge(array, start, mid, end);
}

// Note: I decided to make this method private because it is not used from
// outside [segregateNumbers] method
void _merge(List<double> array, int start, int mid, int end) {
  final leftArray = array.getRange(start, mid + 1).toList();
  final rightArray = array.getRange(mid + 1, end + 1).toList();

  int i = 0;
  int j = 0;
  int k = start;

  while (i < leftArray.length && leftArray[i] < 0) {
    array[k] = leftArray[i];
    i++;
    k++;
  }

  while (j < rightArray.length && rightArray[j] < 0) {
    array[k] = rightArray[j];
    j++;
    k++;
  }

  while (i < leftArray.length) {
    array[k] = leftArray[i];
    i++;
    k++;
  }

  while (j < rightArray.length) {
    array[k] = rightArray[j];
    j++;
    k++;
  }
}
