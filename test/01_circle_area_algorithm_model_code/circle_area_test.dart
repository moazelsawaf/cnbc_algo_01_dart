import 'package:test/test.dart';

import 'package:cloudnativebasecamp_algo_01_dart/01_circle_area_algorithm_model_code/circle_area.dart';

void main() {
  group('Circle Area', () {
    // NOTE: The same test data in the video
    test('with radius of 10', () async {
      final r = 10.0;

      final area = calculateCircleArea(r);

      expect(area, 314.1592653589793);
    });

    // NOTE: The same test data in the video
    test('with radius of 20', () async {
      final r = 20.0;

      final area = calculateCircleArea(r);

      expect(area, 1256.6370614359173);
    });
  });
}
