import 'package:test/test.dart';

import 'package:cloudnativebasecamp_algo_01_dart/18_greedy_algorithm_activity_selection_problem_algorithm_code/activity_selection.dart';

void main() {
  group('Activity Selection Problem', () {
    // NOTE: The same test data in the video
    test(
      'with time values of [(9,11),(10,11),(11,12),(12,14),(13,15),(15,16)]',
      () async {
        final startTimeArray = <double>[9, 10, 11, 12, 13, 15];
        final endTimeArray = <double>[11, 11, 12, 14, 15, 16];

        final results = activitySelection(startTimeArray, endTimeArray);

        expect(results, [0, 2, 3, 5]);
      },
    );

    test(
      'with time values of [(1,3),(3,4),(2,5),(0,7),(5,9),(8,10),(11,12)]',
      () async {
        final startTimeArray = <double>[1, 3, 2, 0, 5, 8, 11];
        final endTimeArray = <double>[3, 4, 5, 7, 9, 10, 12];

        final results = activitySelection(startTimeArray, endTimeArray);

        expect(results, [0, 1, 4, 6]);
      },
    );
  });
}
