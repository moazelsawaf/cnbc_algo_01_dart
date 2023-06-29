import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

class Item extends Equatable {
  final String name;
  final double ratio;
  final double value;
  final double weight;

  Item({
    required this.name,
    required this.value,
    required this.weight,
  }) : ratio = value / weight;

  // Include all the properties in the equality operation
  @override
  List<Object?> get props => [name, value, weight, ratio];
}

class Knapsack {
  final double maxCapacity;
  double currentCapacity = 0;
  double totalValue = 0;
  List<Item> items = [];

  Knapsack({required this.maxCapacity});

  void _addItem(Item newItem) {
    if (newItem.weight > maxCapacity - currentCapacity) {
      final weightDiff = maxCapacity - currentCapacity;

      final item = Item(
        name: newItem.name,
        value: newItem.ratio * weightDiff,
        weight: weightDiff,
      );

      newItem = item;
    }

    items.add(newItem);
    currentCapacity += newItem.weight;
    totalValue += newItem.value;
  }

  void addItems(List<Item> newItems) {
    int j = 0;

    while (currentCapacity < maxCapacity) {
      _addItem(newItems[j]);
      j++;
    }
  }
}

List<Item> mergeSort(List<Item> items) {
  if (items.length == 1) return items;

  final mid = items.length ~/ 2;

  List<Item> left = items.slice(0, mid).toList();
  List<Item> right = items.slice(mid).toList();

  left = mergeSort(left);
  right = mergeSort(right);
  return _merge(left, right);
}

List<Item> _merge(List<Item> left, List<Item> right) {
  final result = <Item>[];

  while (left.isNotEmpty && right.isNotEmpty) {
    if (left.first.ratio < right.first.ratio) {
      result.add(right.first);
      right = right.slice(1).toList();
    } else {
      result.add(left.first);
      left = left.slice(1).toList();
    }
  }

  while (left.isNotEmpty) {
    result.add(left.first);
    left = left.slice(1).toList();
  }

  while (right.isNotEmpty) {
    result.add(right.first);
    right = right.slice(1).toList();
  }

  return result;
}
