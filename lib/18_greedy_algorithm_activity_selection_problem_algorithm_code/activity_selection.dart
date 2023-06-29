List<int> activitySelection(
  List<double> startTimeArray,
  List<double> endTimeArray,
) {
  final results = [0];
  int j = 0;

  for (int i = 1; i < startTimeArray.length; i++) {
    if (startTimeArray[i] >= endTimeArray[j]) {
      results.add(i);
      j = i;
    }
  }

  return results;
}

void testtest(){
  print('test');
}

void greet(String name) => print('Hello, $name');
