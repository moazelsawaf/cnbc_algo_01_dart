import 'package:test/test.dart';

import 'package:cloudnativebasecamp_algo_01_dart/29_graph_depth_first_search_algorithm_code/depth_first_search.dart';

void main() {
  group("Depth First Search", () {
    // NOTE: The same test data in the video
    test(
      'with 9 nodes undirected graph',
      () async {
        final graph = Graph(['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I']);
        graph.addEdges(0, [1, 2]);
        graph.addEdges(1, [0, 3, 4]);
        graph.addEdges(2, [0, 3, 5]);
        graph.addEdges(3, [1, 2, 4]);
        graph.addEdges(4, [1, 5]);
        graph.addEdges(5, [2, 3, 4, 7]);
        graph.addEdges(6, [7, 8]);
        graph.addEdges(7, [5, 6, 8]);
        graph.addEdges(8, [6, 7]);

        final edges = graph.depthFirstSearch();

        expect(edges.length, 8);
        expect(
          edges,
          [
            {'from': 'A', 'to': 'B'},
            {'from': 'B', 'to': 'D'},
            {'from': 'D', 'to': 'C'},
            {'from': 'C', 'to': 'F'},
            {'from': 'F', 'to': 'E'},
            {'from': 'F', 'to': 'H'},
            {'from': 'H', 'to': 'G'},
            {'from': 'G', 'to': 'I'},
          ],
        );
      },
    );

    test(
      'with 9 nodes directed graph',
      () async {
        final graph = Graph(['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I']);
        graph.addEdges(0, [1, 2]);
        graph.addEdges(1, [3, 4]);
        graph.addEdges(2, [3, 5]);
        graph.addEdges(3, [4]);
        graph.addEdges(4, [5]);
        graph.addEdges(5, [7]);
        graph.addEdges(6, [8]);
        graph.addEdges(7, [6, 8]);
        graph.addEdges(8, []);

        final edges = graph.depthFirstSearch();

        expect(edges.length, 8);
        expect(
          edges,
          [
            {'from': 'A', 'to': 'B'},
            {'from': 'B', 'to': 'D'},
            {'from': 'D', 'to': 'E'},
            {'from': 'E', 'to': 'F'},
            {'from': 'F', 'to': 'H'},
            {'from': 'H', 'to': 'G'},
            {'from': 'G', 'to': 'I'},
            {'from': 'A', 'to': 'C'}
          ],
        );
      },
    );
  });
}
