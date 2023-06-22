void mergeSort(List<double> array, int start, int end) {
  if (end <= start) return;

  final midpoint = (start + end) ~/ 2;

  mergeSort(array, start, midpoint);
  mergeSort(array, midpoint + 1, end);
  merge(array, start, midpoint, end);
}

void merge(List<num> array, int start, int midpoint, int end) {
  final leftList = array.getRange(start, midpoint + 1).toList();
  final rightList = array.getRange(midpoint + 1, end + 1).toList();

  int i = 0;
  int j = 0;
  int p = start;

  while (i < leftList.length && j < rightList.length) {
    if (leftList[i] < rightList[j]) {
      array[p] = leftList[i];
      i++;
    } else {
      array[p] = rightList[j];
      j++;
    }

    p++;
  }

  if (i >= leftList.length) {
    array.replaceRange(
      p,
      end + 1,
      rightList.getRange(j, rightList.length),
    );
  } else {
    array.replaceRange(
      p,
      end + 1,
      leftList.getRange(i, leftList.length),
    );
  }
}
