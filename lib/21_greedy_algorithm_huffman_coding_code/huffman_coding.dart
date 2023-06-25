import 'package:collection/collection.dart';

class HeapNode {
  final String data;
  final int frequency;
  HeapNode? left;
  HeapNode? right;

  HeapNode({
    required this.data,
    required this.frequency,
  });
}

class HuffmanCoding {
  static const _internalCharacter = '\u0000';

  final _codes = <String, String>{};

  Map<String, String> encode(String message) {
    final charsFrequencies = _getCharsFrequencies(message);

    final minHeap = PriorityQueue<HeapNode>(
      (p0, p1) => p0.frequency.compareTo(p1.frequency),
    );

    for (final k in charsFrequencies.keys) {
      final newNode = HeapNode(data: k, frequency: charsFrequencies[k]!);
      minHeap.add(newNode);
    }

    while (minHeap.length != 1) {
      final left = minHeap.removeFirst();
      final right = minHeap.removeFirst();
      final newFreq = left.frequency + right.frequency;
      final top = HeapNode(data: _internalCharacter, frequency: newFreq);
      top.left = left;
      top.right = right;
      minHeap.add(top);
    }

    _generateCodes(minHeap.first, '');

    return _codes;
  }

  Map<String, int> _getCharsFrequencies(String message) {
    final frequencies = <String, int>{};

    for (int i = 0; i < message.length; i++) {
      if (frequencies[message[i]] == null) {
        frequencies[message[i]] = 1;
      } else {
        frequencies[message[i]] = frequencies[message[i]]! + 1;
      }
    }

    return frequencies;
  }

  void _generateCodes(HeapNode? node, String code) {
    if (node == null) return;

    if (node.data != _internalCharacter) {
      _codes[node.data] = code;
    }

    _generateCodes(node.left, '${code}0');
    _generateCodes(node.right, '${code}1');
  }
}
