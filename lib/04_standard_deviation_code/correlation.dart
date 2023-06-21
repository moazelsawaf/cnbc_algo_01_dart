import 'dart:math' as math;

double calculateCorrelation(List<math.Point> points) {
  double sumX = 0;
  double sumY = 0;
  double sumXY = 0;
  double sumXSqr = 0;
  double sumYSqr = 0;

  for (final point in points) {
    sumX += point.x;
    sumY += point.y;
    sumXY += point.x * point.y;
    sumXSqr += math.pow(point.x, 2);
    sumYSqr += math.pow(point.y, 2);
  }

  final numerator = points.length * sumXY - sumX * sumY;

  final denominatorXPart = math.sqrt(
    points.length * sumXSqr - math.pow(sumX, 2),
  );

  final denominatorYPart = math.sqrt(
    points.length * sumYSqr - math.pow(sumY, 2),
  );

  final denominator = denominatorXPart * denominatorYPart;

  return numerator / denominator;
}
