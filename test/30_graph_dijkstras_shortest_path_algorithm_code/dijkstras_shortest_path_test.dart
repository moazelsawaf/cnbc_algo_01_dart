import 'package:test/test.dart';

import 'package:cnbc_algo_01_dart/30_graph_dijkstras_shortest_path_algorithm_code/dijkstras_shortest_path.dart';

void main() {
  group("Dijkstra's Shortest Path", () {
    // NOTE: The same test data in the video
    test(
      'with 10 nodes directed weighted graph',
      () async {
        final graph = Graph(['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J']);
        graph.addEdges(0, [1, 2, 3], [2, 4, 3]);

        graph.addEdges(1, [4, 5, 6], [7, 4, 6]);
        graph.addEdges(2, [4, 5, 6], [3, 2, 4]);
        graph.addEdges(3, [4, 5, 6], [4, 1, 5]);

        graph.addEdges(4, [7, 8], [1, 4]);
        graph.addEdges(5, [7, 8], [6, 3]);
        graph.addEdges(6, [7, 8], [3, 3]);

        graph.addEdges(7, [9], [3]);
        graph.addEdges(8, [9], [4]);

        final result = graph.dijkstrasShortestPath();

        expect(result.$1, 11);
        expect(result.$2, ['A', 'C', 'E', 'H', 'J']);
      },
    );

    test(
      'with 8 nodes directed weighted graph',
      () async {
        final graph = Graph(['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H']);
        graph.addEdges(0, [1], [6]);
        graph.addEdges(1, [2, 3, 4], [10, 8, 7]);
        graph.addEdges(2, [5], [3]);
        graph.addEdges(3, [5, 6], [10, 6]);
        graph.addEdges(4, [5], [7]);
        graph.addEdges(5, [7], [5]);
        graph.addEdges(6, [7], [3]);

        final result = graph.dijkstrasShortestPath();

        expect(result.$1, 23);
        expect(result.$2, ['A', 'B', 'D', 'G', 'H']);
      },
    );
  });
}
