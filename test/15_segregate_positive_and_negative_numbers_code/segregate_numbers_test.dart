import 'package:test/test.dart';

import 'package:cnbc_algo_01_dart/15_segregate_positive_and_negative_numbers_code/segregate_numbers.dart';

void main() {
  group('Segregate Negative and Positive Numbers', () {
    // NOTE: The same test data in the video
    test('with array values of [6, -5, 12, 10, -9, -1]', () async {
      final array = <double>[6, -5, 12, 10, -9, -1];

      segregateNumbers(array, 0, array.length - 1);

      expect(array, [-5, -9, -1, 6, 12, 10]);
    });

    test('with array values of [1, 2, 3] (All Positive)', () async {
      final array = <double>[1, 2, 3];

      segregateNumbers(array, 0, array.length - 1);

      expect(array, [1, 2, 3]);
    });

    test('with array values of [-1, -2, -3] (All Negative)', () async {
      final array = <double>[-1, -2, -3];

      segregateNumbers(array, 0, array.length - 1);

      expect(array, [-1, -2, -3]);
    });

    test('with array values of [-1, 0, 1, -2, 2] (Contains Zero)', () async {
      final array = <double>[-1, 0, 1, -2, 2];

      segregateNumbers(array, 0, array.length - 1);

      expect(array, [-1, -2, 0, 1, 2]);
    });
  });
}
