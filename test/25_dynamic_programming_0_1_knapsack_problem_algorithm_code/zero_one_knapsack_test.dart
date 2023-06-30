import 'package:test/test.dart';

import 'package:cnbc_algo_01_dart/25_dynamic_programming_0_1_knapsack_problem_algorithm_code/zero_one_knapsack.dart';

void main() {
  group('0/1 Knapsack', () {
    // NOTE: The same test data in the video
    test(
      'with 4 items and weight of 8',
      () async {
        final items = [
          {'name': '#1', 'weight': 1, 'profit': 4},
          {'name': '#2', 'weight': 3, 'profit': 9},
          {'name': '#3', 'weight': 5, 'profit': 12},
          {'name': '#4', 'weight': 4, 'profit': 11},
        ];
        final maxWeight = 8;

        final result = zeroOneKnapsack(items, maxWeight);

        expect(result.$1, 24);
        expect(result.$2, ['#4', '#2', '#1']);
      },
    );

    test(
      'with 6 items and weight of 15',
      () async {
        final items = [
          {'name': '#1', 'weight': 5, 'profit': 7},
          {'name': '#2', 'weight': 6, 'profit': 80},
          {'name': '#3', 'weight': 5, 'profit': 32.24},
          {'name': '#4', 'weight': 1, 'profit': 2},
          {'name': '#5', 'weight': 1, 'profit': 20.5},
          {'name': '#6', 'weight': 3, 'profit': 55.12},
        ];
        final maxWeight = 15;

        final result = zeroOneKnapsack(items, maxWeight);

        expect(result.$1, 187.86);
        expect(result.$2, ['#6', '#5', '#3', '#2']);
      },
    );
  });
}
