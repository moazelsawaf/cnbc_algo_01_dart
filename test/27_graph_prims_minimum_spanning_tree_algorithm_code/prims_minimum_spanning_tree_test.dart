import 'package:test/test.dart';

import 'package:cloudnativebasecamp_algo_01_dart/27_graph_prims_minimum_spanning_tree_algorithm_code/prims_minimum_spanning_tree.dart';

void main() {
  group("Prim's Minimum Spanning Tree", () {
    // NOTE: The same test data in the video
    test(
      'with 6 nodes undirected graph',
      () async {
        final labels = ['1', '2', '3', '4', '5', '6'];
        final graph = [
          [0, 6.7, 5.2, 2.8, 5.6, 3.6],
          [6.7, 0, 5.7, 7.3, 5.1, 3.2],
          [5.2, 5.7, 0, 3.4, 8.5, 4.0],
          [2.8, 7.3, 3.4, 0, 8, 4.4],
          [5.6, 5.1, 8.5, 8, 0, 4.6],
          [3.6, 3.2, 4, 4.4, 4.6, 0],
        ];

        final mst = primsMinimumSpanningTree(graph, labels);
        final cost = mst.fold(0.0, (p, e) => p + e['cost']);

        expect(mst.length, labels.length - 1);
        expect(cost, 17.6);
        expect(
          mst,
          [
            {'from': '1', 'to': '4', 'cost': 2.8},
            {'from': '4', 'to': '3', 'cost': 3.4},
            {'from': '1', 'to': '6', 'cost': 3.6},
            {'from': '6', 'to': '2', 'cost': 3.2},
            {'from': '6', 'to': '5', 'cost': 4.6},
          ],
        );
      },
    );

    test(
      'with 6 nodes directed graph',
      () async {
        final labels = ['1', '2', '3', '4', '5', '6'];
        final graph = [
          [0, 6.7, 5.2, 2.8, 5.6, 3.6],
          [0, 0, 5.7, 7.3, 5.1, 3.2],
          [0, 0, 0, 3.4, 8.5, 4.0],
          [0, 0, 0, 0, 8, 4.4],
          [0, 0, 0, 0, 0, 4.6],
          [0, 0, 0, 0, 0, 0],
        ];

        final mst = primsMinimumSpanningTree(graph, labels);
        final cost = mst.fold(0.0, (p, e) => p + e['cost']);

        expect(mst.length, labels.length - 1);
        expect(cost, 23.900000000000002); // 23.9
        expect(
          mst,
          [
            {'from': '1', 'to': '4', 'cost': 2.8},
            {'from': '1', 'to': '6', 'cost': 3.6},
            {'from': '1', 'to': '3', 'cost': 5.2},
            {'from': '1', 'to': '5', 'cost': 5.6},
            {'from': '1', 'to': '2', 'cost': 6.7},
          ],
        );
      },
    );
  });
}
