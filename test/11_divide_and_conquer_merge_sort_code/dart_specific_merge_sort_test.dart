import 'package:test/test.dart';

import 'package:cloudnativebasecamp_algo_01_dart/11_divide_and_conquer_merge_sort_code/dart_specific_merge_sort.dart';

void main() {
  group('(Dart Specific) Merge Sort', () {
    // NOTE: The same test data in the video
    test('with array values of [9, 5, 1, 4]', () async {
      final array = <double>[9, 5, 1, 4];

      mergeSort(array, 0, array.length - 1);

      expect(array, [1, 4, 5, 9]);
    });

    // NOTE: The same test data in the video
    test('with array values of [8, 65, 9, 7, 3, 5, 54]', () async {
      final array = <double>[8, 65, 9, 7, 3, 5, 54];

      mergeSort(array, 0, array.length - 1);

      expect(array, [3, 5, 7, 8, 9, 54, 65]);
    });

    test('with single array value of [5]', () async {
      final array = <double>[5];

      mergeSort(array, 0, array.length - 1);

      expect(array, [5]);
    });
  });
}