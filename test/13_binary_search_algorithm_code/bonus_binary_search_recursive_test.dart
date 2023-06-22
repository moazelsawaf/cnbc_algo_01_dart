import 'package:test/test.dart';

import 'package:cloudnativebasecamp_algo_01_dart/13_binary_search_algorithm_code/bonus_binary_search_recursive.dart';

void main() {
  group(
    '(Bonus) (Recursive Implementation) Binary Search with x values of [1, 2, 3, 4, 5, 6, 7, 8]',
    () {
      final x = <double>[1, 2, 3, 4, 5, 6, 7, 8];

      // NOTE: The same test data in the video
      test(
        'given 4 as search key ',
        () async {
          final double key = 4;

          final indexOfKey = binarySearchRecursive(x, key, 0, x.length - 1);

          expect(indexOfKey, 3);
        },
      );

      // NOTE: The same test data in the video
      test(
        'given 1 as search key',
        () async {
          final double key = 1;

          final indexOfKey = binarySearchRecursive(x, key, 0, x.length - 1);

          expect(indexOfKey, 0);
        },
      );

      // NOTE: The same test data in the video
      test(
        'given 9 as search key (Does not exist)',
        () async {
          final double key = 9;

          final indexOfKey = binarySearchRecursive(x, key, 0, x.length - 1);

          expect(indexOfKey, -1);
        },
      );

      // NOTE: The same test data in the video
      test(
        'given 0 as search key (Does not exist)',
        () async {
          final double key = 0;

          final indexOfKey = binarySearchRecursive(x, key, 0, x.length - 1);

          expect(indexOfKey, -1);
        },
      );
    },
  );
}
