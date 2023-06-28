import 'dart:math';

String longestCommonSubsequence(String text1, String text2) {
  final n = text1.length;
  final m = text2.length;

  text1 = ' $text1';
  text2 = ' $text2';

  final dp = List.generate(
    text2.length,
    (_) => List.generate(text1.length, (_) => 0),
  );

  for (int i = 0; i <= m; i++) {
    for (int j = 0; j <= n; j++) {
      if (i == 0 || j == 0) {
        dp[i][j] = 0;
      } else if (text2[i] == text1[j]) {
        dp[i][j] = 1 + dp[i - 1][j - 1];
      } else {
        dp[i][j] = max(
          dp[i][j - 1],
          dp[i - 1][j],
        );
      }
    }
  }

  String lcs = '';
  int i = m;
  int j = n;

  while (i > 0 && j > 0) {
    if (dp[i][j] > dp[i][j - 1]) {
      if (dp[i][j] == dp[i - 1][j]) {
        i--;
      } else {
        lcs = text2[i] + lcs;
        i--;
        j--;
      }
    } else {
      j--;
    }
  }

  return lcs;
}
