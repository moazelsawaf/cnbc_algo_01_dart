import 'dart:math' as math;

double calculateStandardDeviation(List<double> x) {
  double sd = 0;
  double avg = 0;
  double a = 0;
  double b = 0;
  int n = 0;

  n = x.length;

  for (int i = 0; i < n; i++) {
    avg += x[i];
  }

  avg = avg / n;

  for (int i = 0; i < n; i++) {
    a += math.pow((x[i] - avg), 2);
  }

  b = a / n;

  sd = math.sqrt(b);

  return sd;
}
