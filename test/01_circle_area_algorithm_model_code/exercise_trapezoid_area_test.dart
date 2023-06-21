import 'package:cloudnativebasecamp_algo_01_dart/01_circle_area_algorithm_model_code/exercise_trapezoid_area.dart';
import 'package:test/test.dart';

void main() {
  group('Trapezoid Area', () {
    test(
      'with base (a) of 12 and base (b) of 15.25 and height of 56.5',
      () async {
        final a = 12.0;
        final b = 15.25;
        final h = 56.5;

        final area = calculateTrapezoidArea(a, b, h);

        expect(area, 769.8125);
      },
    );

    test(
      'with base (a) of 15.456 and base (b) of 145.5 and height of 5.23',
      () async {
        final a = 15.456;
        final b = 145.5;
        final h = 5.23;

        final area = calculateTrapezoidArea(a, b, h);

        expect(area, 420.89994);
      },
    );
  });
}
