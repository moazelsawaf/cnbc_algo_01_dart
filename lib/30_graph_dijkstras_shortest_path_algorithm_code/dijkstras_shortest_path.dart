class Vertex {
  String name;
  bool visited = false;
  double totalLength = 0;
  Vertex? sourceOfTotalLength;
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

  void addEdges(int vertexIndex, List<int> targets, List<double> weights) {
    for (int i = 0; i < targets.length; i++) {
      final edge = Edge(
        source: vertices[vertexIndex],
        target: vertices[targets[i]],
        weight: weights[i],
      );

      vertices[vertexIndex].vertexLinks.add(edge);
    }
  }

  (double, List<String>) dijkstrasShortestPath() {
    for (int i = 1; i < vertices.length; i++) {
      vertices[i].totalLength = double.infinity;
    }

    Vertex currentVertex;
    for (int i = 0; i < vertices.length; i++) {
      currentVertex = vertices[i];
      final destinations = currentVertex.vertexLinks;

      if (destinations.isEmpty) continue;

      Edge currentEdge;
      for (int j = 0; j < destinations.length; j++) {
        currentEdge = destinations[j];
        final newLength = currentVertex.totalLength + currentEdge.weight;

        if (newLength < currentEdge.target.totalLength) {
          currentEdge.target.totalLength = newLength;
          currentEdge.target.sourceOfTotalLength = currentVertex;
        }
      }
    }

    final minimumCost = vertices.last.totalLength;

    final path = [vertices.last.name];
    Vertex vertex = vertices.last;

    while (vertex.sourceOfTotalLength != null) {
      path.insert(0, vertex.sourceOfTotalLength!.name);
      vertex = vertex.sourceOfTotalLength!;
    }

    _restoreVertices();

    return (minimumCost, path);
  }

  void _restoreVertices() {
    for (final vertex in vertices) {
      vertex.visited = false;
      vertex.totalLength = 0;
      vertex.sourceOfTotalLength = null;
    }
  }
}
