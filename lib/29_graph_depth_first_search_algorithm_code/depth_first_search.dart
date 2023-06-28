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
  final List<Map<String, String>> _dfsEdges = [];

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

  List<Map<String, String>> depthFirstSearch() {
    _depthFirstSearchRecursive(vertices.first);

    _restoreVertices();

    return _dfsEdges;
  }

  void _depthFirstSearchRecursive(Vertex vertex) {
    vertex.visited = true;

    final destinations = vertex.vertexLinks;

    for (int i = 0; i < destinations.length; i++) {
      if (destinations[i].target.visited == false) {
        _dfsEdges.add({
          'from': vertex.name,
          'to': destinations[i].target.name,
        });

        _depthFirstSearchRecursive(destinations[i].target);
      }
    }
  }

  void _restoreVertices() {
    for (final vertex in vertices) {
      vertex.visited = false;
    }
  }
}
