import 'package:test/test.dart';

import 'package:cloudnativebasecamp_algo_01_dart/09_insertion_sort_algorithm_code_analysis/insertion_sort.dart';

void main() {
  group('Insertion Sort', () {
    // NOTE: The same test data in the video
    test('with x values of [9, 5, 1, 4, 3]', () async {
      final x = [9, 5, 1, 4, 3];

      insertionSort(x);

      expect(x, [1, 3, 4, 5, 9]);
    });

    test('with x values of [145, 125, 12.2, 15, 45.52, 456.15, 12]', () async {
      final x = [145, 125, 12.2, 15, 45.52, 456.15, 12];

      insertionSort(x);

      expect(x, [12, 12.2, 15, 45.52, 125, 145, 456.15]);
    });

    test('with single x value of [5]', () async {
      final x = [5];

      insertionSort(x);

      expect(x, [5]);
    });
  });
}
