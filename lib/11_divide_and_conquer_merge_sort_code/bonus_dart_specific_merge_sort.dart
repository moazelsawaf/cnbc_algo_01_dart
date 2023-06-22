void mergeSort(List<double> array, int start, int end) {
  if (end <= start) return;

  final midpoint = (start + end) ~/ 2;

  mergeSort(array, start, midpoint);
  mergeSort(array, midpoint + 1, end);
  _merge(array, start, midpoint, end);
}

// Note: I decided to make this method private because it is not used from
// outside the [mergeSort] method
void _merge(List<num> array, int start, int midpoint, int end) {
  final leftArray = array.getRange(start, midpoint + 1).toList();
  final rightArray = array.getRange(midpoint + 1, end + 1).toList();

  int i = 0;
  int j = 0;
  int k = start;

  while (i < leftArray.length && j < rightArray.length) {
    if (leftArray[i] < rightArray[j]) {
      array[k] = leftArray[i];
      i++;
    } else {
      array[k] = rightArray[j];
      j++;
    }

    k++;
  }

  if (i >= leftArray.length) {
    array.replaceRange(
      k,
      end + 1,
      rightArray.getRange(j, rightArray.length),
    );
  } else {
    array.replaceRange(
      k,
      end + 1,
      leftArray.getRange(i, leftArray.length),
    );
  }
}
