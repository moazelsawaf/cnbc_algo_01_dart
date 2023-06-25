import 'package:test/test.dart';

import 'package:cloudnativebasecamp_algo_01_dart/22_greedy_algorithm_fractional_knapsack_problem_algorithm_code/fractional_knapsack.dart';

void main() {
  group('Fractional Knapsack', () {
    // NOTE: The same test data in the video
    test(
      'with 6 items and weight of 12',
      () async {
        final items = [
          Item(name: '#0', value: 4, weight: 1),
          Item(name: '#1', value: 9, weight: 2),
          Item(name: '#2', value: 12, weight: 10),
          Item(name: '#3', value: 11, weight: 4),
          Item(name: '#4', value: 6, weight: 3),
          Item(name: '#5', value: 5, weight: 5),
        ];
        final sortedItems = mergeSort(items);
        final knapsack = Knapsack(maxCapacity: 12);

        knapsack.addItems(sortedItems);

        expect(knapsack.currentCapacity, 12);
        expect(knapsack.totalValue, 32.4);
        expect(
          knapsack.items,
          [
            Item(name: '#1', value: 9, weight: 2),
            Item(name: '#0', value: 4, weight: 1),
            Item(name: '#3', value: 11, weight: 4),
            Item(name: '#4', value: 6, weight: 3),
            Item(name: '#2', value: 2.4, weight: 2),
          ],
        );
      },
    );

    test(
      'with 4 items and weight of 40',
      () async {
        final items = [
          Item(name: '#0', value: 10, weight: 30),
          Item(name: '#1', value: 20, weight: 10),
          Item(name: '#2', value: 30, weight: 40),
          Item(name: '#3', value: 40, weight: 20),
        ];
        final sortedItems = mergeSort(items);
        final knapsack = Knapsack(maxCapacity: 40);

        knapsack.addItems(sortedItems);

        expect(knapsack.currentCapacity, 40);
        expect(knapsack.totalValue, 67.5);
        expect(
          knapsack.items,
          [
            Item(name: '#1', value: 20, weight: 10),
            Item(name: '#3', value: 40, weight: 20),
            Item(name: '#2', value: 7.5, weight: 10),
          ],
        );
      },
    );
  });
}
