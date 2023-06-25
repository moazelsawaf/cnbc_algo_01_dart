import 'package:test/test.dart';

import 'package:cloudnativebasecamp_algo_01_dart/21_greedy_algorithm_huffman_coding_code/huffman_coding.dart';

void main() {
  group('Huffman Coding', () {
    final huffmanCoding = HuffmanCoding();

    // NOTE: The same test input in the video but with different valid output
    // because of the different order of the characters frequency map
    test(
      'with message "internet"',
      () async {
        final message = 'internet';

        final codes = huffmanCoding.encode(message);

        expect(
          codes,
          {
            't': '00',
            'n': '01',
            'r': '100',
            'i': '101',
            'e': '11',
          },
        );
      },
    );

    // NOTE: The same test input in the video but with different valid output
    // because of the different order of the characters frequency map
    test(
      'with moderately long message',
      () async {
        final message =
            "The output from Huffman's algorithm can be viewed as a variable length code table for encoding a source symbol. The algorithm derives this table from the estimated probability or frequency of occurrence for each possible value of the source symbol. as in other entropy encoding methods, more common symbols are generally represented using fewer bits than less common symbols. Huffman's method can be efficiently implemented, finding a code in time linear to the number of input weights if these weights are sorted. However, although optimal among methods encoding symbols separately, Huffman coding is not always optimal among all compression methods it is replaced with arithmetic coding or asymmetric numeral systems if better compression ratio is required.";

        final codes = huffmanCoding.encode(message);

        expect(
          codes,
          {
            "n": "0000",
            "H": "0001000",
            ",": "0001001",
            ".": "0001010",
            "v": "0001011",
            "d": "00011",
            "e": "001",
            "a": "0100",
            "r": "0101",
            "f": "01100",
            "h": "01101",
            "s": "0111",
            "i": "1000",
            "t": "1001",
            "c": "10100",
            "T": "10101000",
            "q": "101010010",
            "'": "101010011",
            "w": "1010101",
            "p": "101011",
            "o": "1011",
            " ": "110",
            "l": "11100",
            "y": "111010",
            "u": "111011",
            "b": "111100",
            "g": "111101",
            "m": "11111"
          },
        );
      },
    );
  });
}
