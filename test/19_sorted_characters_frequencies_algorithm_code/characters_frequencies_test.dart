import 'package:test/test.dart';

import 'package:cloudnativebasecamp_algo_01_dart/19_sorted_characters_frequencies_algorithm_code/characters_frequencies.dart';

void main() {
  group('Characters Frequencies', () {
    final charactersFrequencies = CharactersFrequencies();

    group('(ASCII Method)', () {
      // NOTE: The same test data in the video
      test('with string "hello world"', () async {
        final string = 'hello world';

        final result = charactersFrequencies.asciiMethod(string);

        expect(
          result,
          {
            ' ': 1,
            'd': 1,
            'e': 1,
            'h': 1,
            'l': 3,
            'o': 2,
            'r': 1,
            'w': 1,
          },
        );
      });

      // NOTE: The same test data in the video
      test('with moderately long string"', () async {
        final string =
            "The output from Huffman's algorithm can be viewed as a variable length code table for encoding a source symbol. The algorithm derives this table from the estimated probability or frequency of occurrence for each possible value of the source symbol. as in other entropy encoding methods, more common symbols are generally represented using fewer bits than less common symbols. Huffman's method can be efficiently implemented, finding a code in time linear to the number of input weights if these weights are sorted. However, although optimal among methods encoding symbols separately, Huffman coding is not always optimal among all compression methods it is replaced with arithmetic coding or asymmetric numeral systems if better compression ratio is required.";

        final result = charactersFrequencies.asciiMethod(string);

        expect(
          result,
          {
            " ": 115,
            "'": 2,
            ",": 4,
            ".": 5,
            "H": 4,
            "T": 2,
            "a": 40,
            "b": 16,
            "c": 24,
            "d": 20,
            "e": 78,
            "f": 20,
            "g": 16,
            "h": 23,
            "i": 45,
            "l": 29,
            "m": 37,
            "n": 38,
            "o": 54,
            "p": 13,
            "q": 2,
            "r": 40,
            "s": 44,
            "t": 46,
            "u": 16,
            "v": 5,
            "w": 7,
            "y": 14,
          },
        );
      });

      test(
        'with string "أهلاً وسهلاً" (Invalid ASCII String)',
        () async {
          final string = 'أهلاً وسهلاً';

          expect(
            () => charactersFrequencies.asciiMethod(string),
            throwsArgumentError,
          );
        },
      );
    });

    group('(Any Code Method)', () {
      // NOTE: The same test data in the video
      test('with string "hello world"', () async {
        final string = 'hello world';

        final result = charactersFrequencies.anyCodeMethod(string);

        expect(
          result,
          [
            ['h', 1],
            ['e', 1],
            [' ', 1],
            ['w', 1],
            ['r', 1],
            ['d', 1],
            ['o', 2],
            ['l', 3],
          ],
        );
      });

      // NOTE: The same test data in the video
      test('with moderately long string"', () async {
        final string =
            "The output from Huffman's algorithm can be viewed as a variable length code table for encoding a source symbol. The algorithm derives this table from the estimated probability or frequency of occurrence for each possible value of the source symbol. as in other entropy encoding methods, more common symbols are generally represented using fewer bits than less common symbols. Huffman's method can be efficiently implemented, finding a code in time linear to the number of input weights if these weights are sorted. However, although optimal among methods encoding symbols separately, Huffman coding is not always optimal among all compression methods it is replaced with arithmetic coding or asymmetric numeral systems if better compression ratio is required.";

        final result = charactersFrequencies.anyCodeMethod(string);

        expect(
          result,
          [
            ["T", 2],
            ["'", 2],
            ["q", 2],
            ["H", 4],
            [",", 4],
            ["v", 5],
            [".", 5],
            ["w", 7],
            ["p", 13],
            ["y", 14],
            ["u", 16],
            ["g", 16],
            ["b", 16],
            ["f", 20],
            ["d", 20],
            ['h', 23],
            ["c", 24],
            ['l', 29],
            ["m", 37],
            ["n", 38],
            ["r", 40],
            ["a", 40],
            ["s", 44],
            ["i", 45],
            ["t", 46],
            ["o", 54],
            ["e", 78],
            [" ", 115],
          ],
        );
      });

      test(
        'with string "أهلاً وسهلاً" (Non-ASCII String)',
        () async {
          final string = 'أهلاً وسهلاً';

          final result = charactersFrequencies.anyCodeMethod(string);

          expect(
            result,
            [
              ['أ', 1],
              [' ', 1],
              ['و', 1],
              ['س', 1],
              ['ه', 2],
              ['ل', 2],
              ['ا', 2],
              ['ً', 2],
            ],
          );
        },
      );
    });
  });
}
