import 'package:test/test.dart';

import 'package:cnbc_algo_01_dart/04_standard_deviation_code/standard_deviation.dart';

void main() {
  group('Standard Deviation', () {
    // NOTE: The same test data in the video
    test('with x values of [1, 2, 3]', () async {
      final x = <double>[1, 2, 3];

      final sd = calculateStandardDeviation(x);

      expect(sd, 0.816496580927726);
    });

    test('with x values of [10, 12, 23, 23, 16, 23, 21, 16]', () async {
      final x = <double>[10, 12, 23, 23, 16, 23, 21, 16];

      final sd = calculateStandardDeviation(x);

      expect(sd, 4.898979485566356);
    });
  });
}
