
abstract class SortAlgorithm{
  List sort(List);

  factory SortAlgorithm(String type) {
    switch (type) {
      //冒泡排序
      case "bubble":
        return BubbleSort();
      //插入排序
      case "insertion":
        return InsertionSort();
      //选择排序
      case "selection":
        return SelectionSort();
      //希尔排序
      case "shell":
        return ShellSort();
      //归并排序
      case "merge":
        return MergeSort();
      //快速排序
      case "quick":
        return QuickSort();
      //堆排序
      case "heap":
        return HeapSort();
      //计数排序
      case "counting":
        return CountingSort();
      //桶排序
      case "bucket":
        return BucketSort();
      //基数排序
      case "radix":
        return RadixSort();
      default:
        return BubbleSort();
    }
  }
}

class BubbleSort implements SortAlgorithm {
  @override
  List sort(List) {
    return null;
  }
}

class InsertionSort implements SortAlgorithm {
  @override
  List sort(List) {
    return null;
  }
}

class SelectionSort implements SortAlgorithm {
  @override
  List sort(List) {
    return null;
  }
}

class ShellSort implements SortAlgorithm {
  @override
  List sort(List) {
    return null;
  }
}

class MergeSort implements SortAlgorithm {
  @override
  List sort(List) {
    return null;
  }
}

class QuickSort implements SortAlgorithm {
  @override
  List sort(List) {
    return null;
  }
}

class HeapSort implements SortAlgorithm {
  @override
  List sort(List) {
    return null;
  }
}

class CountingSort implements SortAlgorithm {
  @override
  List sort(List) {
    return null;
  }
}

class BucketSort implements SortAlgorithm {
  @override
  List sort(List) {
    return null;
  }
}

class RadixSort implements SortAlgorithm {
  @override
  List sort(List) {
    return null;
  }
}
