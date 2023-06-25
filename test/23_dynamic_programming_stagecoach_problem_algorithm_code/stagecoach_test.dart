import 'package:test/test.dart';

import 'package:cloudnativebasecamp_algo_01_dart/23_dynamic_programming_stagecoach_problem_algorithm_code/stagecoach.dart';

void main() {
  group('Stagecoach', () {
    // NOTE: The same test data in the video
    test(
      'with 8 nodes graph',
      () async {
        final labels = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'];
        final graph = <List<double>>[
          [0, 6, 0, 0, 0, 0, 0, 0],
          [0, 0, 10, 8, 7, 0, 0, 0],
          [0, 0, 0, 0, 0, 3, 0, 0],
          [0, 0, 0, 0, 0, 10, 6, 0],
          [0, 0, 0, 0, 0, 7, 0, 0],
          [0, 0, 0, 0, 0, 0, 0, 5],
          [0, 0, 0, 0, 0, 0, 0, 3],
          [0, 0, 0, 0, 0, 0, 0, 0],
        ];

        final result = stagecoach(graph, labels);

        expect(result.$1, 23);
        expect(result.$2, ['A', 'B', 'D', 'G', 'H']);
      },
    );

    test(
      'with 10 nodes graph',
      () async {
        final labels = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];
        final graph = <List<double>>[
          [0, 2, 4, 3, 0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 7, 4, 6, 0, 0, 0],
          [0, 0, 0, 0, 3, 2, 4, 0, 0, 0],
          [0, 0, 0, 0, 4, 1, 5, 0, 0, 0],
          [0, 0, 0, 0, 0, 0, 0, 1, 4, 0],
          [0, 0, 0, 0, 0, 0, 0, 6, 3, 0],
          [0, 0, 0, 0, 0, 0, 0, 3, 3, 0],
          [0, 0, 0, 0, 0, 0, 0, 0, 0, 3],
          [0, 0, 0, 0, 0, 0, 0, 0, 0, 4],
          [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        ];

        final result = stagecoach(graph, labels);

        expect(result.$1, 11);
        expect(result.$2, ['A', 'C', 'E', 'H', 'J']);
      },
    );
  });
}
