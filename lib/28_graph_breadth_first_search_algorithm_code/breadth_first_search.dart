import 'dart:collection';

class Vertex {
  String name;
  bool visited = false;
  List<Edge> vertexLinks = [];

  Vertex(this.name);
}

class Edge {
  final Vertex source;
  final Vertex target;
  final double weight;

  const Edge({
    required this.source,
    required this.target,
    this.weight = 0,
  });
}

class Graph {
  final List<Vertex> vertices = [];

  Graph(List<String> names) {
    for (final name in names) {
      vertices.add(Vertex(name));
    }
  }

  void addEdges(int vertexIndex, List<int> targets) {
    for (int i = 0; i < targets.length; i++) {
      final edge = Edge(
        source: vertices[vertexIndex],
        target: vertices[targets[i]],
      );

      vertices[vertexIndex].vertexLinks.add(edge);
    }
  }

  List<Map<String, String>> breadthFirstSearch() {
    final bfs = <Map<String, String>>[];
    Queue<Vertex> queue = Queue<Vertex>();

    queue.add(vertices.first);
    vertices.first.visited = true;

    Vertex currentVertex;
    List<Edge> destinations;

    while (queue.isNotEmpty) {
      currentVertex = queue.removeFirst();
      destinations = currentVertex.vertexLinks;
      for (int i = 0; i < destinations.length; i++) {
        if (destinations[i].target.visited == false) {
          queue.add(destinations[i].target);
          destinations[i].target.visited = true;

          bfs.add({
            'from': currentVertex.name,
            'to': destinations[i].target.name,
          });
        }
      }
    }

    restoreVertices();

    return bfs;
  }

  void restoreVertices() {
    for (final vertex in vertices) {
      vertex.visited = false;
    }
  }
}
