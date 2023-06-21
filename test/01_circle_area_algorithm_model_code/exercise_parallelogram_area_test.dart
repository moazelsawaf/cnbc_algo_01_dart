import 'package:cloudnativebasecamp_algo_01_dart/01_circle_area_algorithm_model_code/exercise_parallelogram_area.dart';
import 'package:test/test.dart';

void main() {
  group('Parallelogram Area', () {
    test('with base of 15 and height of 23.5', () async {
      final b = 15.0;
      final h = 23.5;

      final area = calculateParallelogramArea(b, h);

      expect(area, 352.5);
    });

    test('with base of 12.5 and height of 12.185', () async {
      final b = 12.5;
      final h = 12.185;

      final area = calculateParallelogramArea(b, h);

      expect(area, 152.3125);
    });
  });
}
