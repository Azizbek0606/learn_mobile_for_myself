abstract class SortingAlgorithm {
  void sort(List<int> numbers);
}
class BubbleSort extends SortingAlgorithm {
  @override
  void sort(List<int> numbers) {
    numbers.sort();
    print("Sorted with BubbleSort: ${numbers}");
  }
}

class QuickSort extends SortingAlgorithm {
  @override
  void sort(List<int> numbers) {
    numbers.sort();
    print("Sorted with QuickSort: ${numbers}");
  }
}
void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];

  SortingAlgorithm bubbleSort = BubbleSort();
  SortingAlgorithm quickSort = QuickSort();

  print("Original list: ${numbers}");

  bubbleSort.sort(numbers);
  quickSort.sort(numbers); 
}

