(double, List<String>) stagecoach(
  List<List<double>> graph,
  List<String> labels,
) {
  final n = graph.length;
  final states = List.filled(n, {});
  states[n - 1] = {'from': '', 'to': '', 'cost': 0};

  for (int i = n - 2; i >= 0; i--) {
    states[i] = {'from': labels[i], 'to': '', 'cost': double.infinity};

    for (int j = i + 1; j < n; j++) {
      if (graph[i][j] == 0) continue;

      final newCost = graph[i][j] + states[j]['cost'];

      if (newCost < states[i]['cost']) {
        states[i]['to'] = labels[j];
        states[i]['cost'] = newCost;
      }
    }
  }

  final minimumCost = states.first['cost'];

  final minimumPath = [labels.first];

  int i = 0;
  int j = 0;

  while (i < states.length) {
    if (states[i]['from'] == minimumPath[j]) {
      minimumPath.add(states[i]['to']);
      j++;
    }
    i++;
  }

  return (minimumCost, minimumPath);
}
