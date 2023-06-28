List<Map> primsMinimumSpanningTree(
  List<List<num>> graph,
  List<String> labels,
) {
  final mst = <Map>[];
  final v = labels.length;
  int selectedEdgesCount = 0;
  final selected = List.filled(v, false);
  selected[0] = true;

  while (selectedEdgesCount < v - 1) {
    num min = double.infinity;
    int tempFrom = -1;
    int tempTo = -1;

    for (int i = 0; i < v; i++) {
      if (selected[i] == true) {
        for (int j = 0; j < v; j++) {
          if (selected[j] == false && graph[i][j] > 0 && graph[i][j] < min) {
            min = graph[i][j];
            tempFrom = i;
            tempTo = j;
          }
        }
      }
    }

    selected[tempTo] = true;
    selectedEdgesCount++;

    mst.add({
      'from': labels[tempFrom],
      'to': labels[tempTo],
      'cost': graph[tempFrom][tempTo],
    });
  }

  return mst;
}
