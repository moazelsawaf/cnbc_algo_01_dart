import 'dart:convert';

class CharactersFrequencies {
  Map<String, int> asciiMethod(String message) {
    final freq = List.filled(127, 0);
    final result = <String, int>{};

    for (int i = 0; i < message.length; i++) {
      final currentCode = AsciiEncoder().convert(message[i]).first;
      freq[currentCode]++;
    }

    for (int i = 0; i < freq.length; i++) {
      if (freq[i] > 0) {
        final c = AsciiDecoder().convert([i]);
        result[c] = freq[i];
      }
    }

    return result;
  }

  List<List<dynamic>> anyCodeMethod(String message) {
    final freq = <String, int>{};

    for (int i = 0; i < message.length; i++) {
      if (freq.containsKey(message[i])) {
        freq[message[i]] = freq[message[i]]! + 1;
      } else {
        freq[message[i]] = 1;
      }
    }

    final sortedFrequencies = _sortMap(freq);

    return sortedFrequencies;
  }

  List<List<dynamic>> _sortMap(Map freq) {
    final freqArray = List.generate(freq.length, (_) => []);
    int i = 0;

    for (final k in freq.keys) {
      freqArray[i] = [k, freq[k]];
      i++;
    }

    _sort(freqArray, 0, freqArray.length - 1);

    return freqArray;
  }

  void _sort(List<List<dynamic>> array, int start, int end) {
    if (end <= start) return;

    final midpoint = (end + start) ~/ 2;
    _sort(array, start, midpoint);
    _sort(array, midpoint + 1, end);
    _merge(array, start, midpoint, end);
  }

  void _merge(List<List<dynamic>> array, int start, int midpoint, int end) {
    int i, j, k;

    final leftLength = midpoint - start + 1;
    final rightLength = end - midpoint;

    final leftArray = List.filled(leftLength, []);
    final rightArray = List.filled(rightLength, []);

    for (i = 0; i < leftLength; i++) {
      leftArray[i] = array[start + i];
    }
    for (j = 0; j < rightLength; j++) {
      rightArray[j] = array[midpoint + 1 + j];
    }

    i = 0;
    j = 0;
    k = start;

    while (i < leftLength && j < rightLength) {
      if (leftArray[i][1] <= rightArray[j][1]) {
        array[k] = leftArray[i];
        i++;
      } else {
        array[k] = rightArray[j];
        j++;
      }
      k++;
    }

    while (i < leftLength) {
      array[k] = leftArray[i];
      i++;
      k++;
    }

    while (j < rightLength) {
      array[k] = rightArray[j];
      j++;
      k++;
    }
  }
}
