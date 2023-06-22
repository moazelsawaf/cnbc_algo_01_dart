import 'package:test/test.dart';

import 'package:cloudnativebasecamp_algo_01_dart/15_segregate_positive_and_negative_numbers_code/segregate_numbers_linear.dart';

void main() {
  group('(Linear) Segregate Negative and Positive Numbers', () {
    // NOTE: The same test data in the video
    test('with array values of [9,-3,5,-2,-8,-6,1,3]', () async {
      final array = <double>[9, -3, 5, -2, -8, -6, 1, 3];

      final segregatedArray = segregateNumbersLinear(array);

      expect(segregatedArray, [-3, -2, -8, -6, 9, 5, 1, 3]);
    });

    test('with array values of [1, 2, 3] (All Positive)', () async {
      final array = <double>[1, 2, 3];

      final segregatedArray = segregateNumbersLinear(array);

      expect(segregatedArray, [1, 2, 3]);
    });

    test('with array values of [-1, -2, -3] (All Negative)', () async {
      final array = <double>[-1, -2, -3];

      final segregatedArray = segregateNumbersLinear(array);

      expect(segregatedArray, [-1, -2, -3]);
    });

    test('with array values of [-1, 0, 1, -2, 2] (Contains Zero)', () async {
      final array = <double>[-1, 0, 1, -2, 2];

      final segregatedArray = segregateNumbersLinear(array);

      expect(segregatedArray, [-1, -2, 0, 1, 2]);
    });
  });
}
