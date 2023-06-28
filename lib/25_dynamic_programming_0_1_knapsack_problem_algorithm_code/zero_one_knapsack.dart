import 'dart:math';

(double, List<String>) zeroOneKnapsack(
  List items,
  int maxWeight,
) {
  items.insert(0, {'name': '#0', 'weight': 0, 'profit': 0});

  final dp = List.generate(
    items.length,
    (_) => List.generate(maxWeight + 1, (_) => 0.0),
  );

  for (int i = 0; i < items.length; i++) {
    for (int j = 0; j <= maxWeight; j++) {
      // The first condition can be removed and the counters of `i` and `j` can start from 1
      // because we have already filled the whole table with zeros, but I kept it to match the
      // video to ease the learning process.
      if (i == 0 || j == 0) {
        dp[i][j] = 0;
      } else if (items[i]['weight'] <= j) {
        dp[i][j] = max(
          dp[i - 1][j],
          items[i]['profit'] + dp[i - 1][j - (items[i]['weight'] as int)],
        );
      } else {
        dp[i][j] = dp[i - 1][j];
      }
    }
  }

  final maxProfit = dp[items.length - 1][maxWeight];

  final solution = <String>[];
  int i = items.length - 1;
  int j = maxWeight;
  int remain = maxWeight;

  while (remain >= 0 && j > 0) {
    if (dp[i][j] > dp[i - 1][j]) {
      solution.add(items[i]['name']);
      remain = remain - (items[i]['weight'] as int);
      j = remain;
      i--;
    } else {
      i--;
    }
  }

  return (maxProfit, solution);
}
