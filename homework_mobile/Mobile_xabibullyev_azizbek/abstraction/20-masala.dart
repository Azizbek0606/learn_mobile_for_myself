abstract class SortingAlgorithm {
  void sort(List<int> numbers);
}

class GetSortList extends SortingAlgorithm {
  @override
  void sort(List<int> numbers) {
    numbers.sort();
    print("tartiblangan list: ${numbers}");
  }
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  GetSortList sorter = GetSortList();
  sorter.sort(numbers);
}
