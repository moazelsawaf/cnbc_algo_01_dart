import 'dart:math' as math;

import 'package:test/test.dart';

import 'package:cloudnativebasecamp_algo_01_dart/04_standard_deviation_code/exercise_correlation.dart';

void main() {
  group('(Exercise) Correlation', () {
    test(
      'with the points [(14.2, 215), (16.4, 325), (11.9, 185), (15.2, 332), (18.5, 406)]',
      () async {
        final points = [
          math.Point(14.2, 215),
          math.Point(16.4, 325),
          math.Point(11.9, 185),
          math.Point(15.2, 332),
          math.Point(18.5, 406),
        ];

        final correlation = calculateCorrelation(points);

        expect(correlation, 0.9453285455268684);
      },
    );

    test(
      'with the points [(1, 10.25), (2.5, 15), (3, 16.5), (5.125, 62), (6.256, 15.2)]',
      () async {
        final points = [
          math.Point(1, 10.25),
          math.Point(2.5, 15),
          math.Point(3, 16.5),
          math.Point(5.125, 62),
          math.Point(6.256, 15.2),
        ];

        final correlation = calculateCorrelation(points);

        expect(correlation, 0.4683005674551153);
      },
    );
  });
}
