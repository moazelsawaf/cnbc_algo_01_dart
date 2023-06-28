import 'package:test/test.dart';

import 'package:cloudnativebasecamp_algo_01_dart/24_dynamic_programming_longest_common_subsequence_algorithm_code/longest_common_subsequence.dart';

void main() {
  group('Longest Common Subsequence', () {
    // NOTE: The same test data in the video
    test(
      'with texts "HELLOWORLD" & "OHELOD"',
      () async {
        final text1 = 'HELLOWORLD';
        final text2 = 'OHELOD';

        final lcs = longestCommonSubsequence(text1, text2);

        expect(lcs, 'HELOD');
        expect(lcs.length, 5);
      },
    );

    test(
      'with texts "int x = 10;" & "int xVal = 10;"',
      () async {
        final text1 = 'int x = 10;';
        final text2 = 'int xVal = 10;';

        final lcs = longestCommonSubsequence(text1, text2);

        expect(lcs, 'int x = 10;');
        expect(lcs.length, 11);
      },
    );
  });
}
