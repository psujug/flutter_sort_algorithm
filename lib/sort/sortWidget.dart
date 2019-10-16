import 'package:flutter/cupertino.dart';

abstract class SortAlgorithm {
  List sort(List list);

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

/**
 * 冒泡排序
 */
class BubbleSort implements SortAlgorithm {
  @override
  List sort(List list) {
    for (int i = 0; i < list.length; i++) {
      for (int j = i + 1; j < list.length; j++) {
        if (list[i] > list[j]) {
          int temp = list[i];
          list[i] = list[j];
          list[j] = temp;
        }
      }
    }
    return list;
  }
}

/**
 * 选择排序
 */
class SelectionSort implements SortAlgorithm {
  @override
  List sort(List list) {
    for (int i = 0; i < list.length; i++) {
      int min = i;
      for (int j = i + 1; j < list.length; j++) {
        if (list[min] > list[j]) {
          min = j;
        }
      }
      if (i != min) {
        int temp = list[i];
        list[i] = list[min];
        list[min] = temp;
      }
    }
    return list;
  }
}

/**
 * 插入排序
 */
class InsertionSort implements SortAlgorithm {
  @override
  List sort(List list) {
    for (int i = 1; i < list.length; i++) {
      int temp = list[i];
      int j = i;
      while (j > 0 && temp < list[j - 1]) {
        list[j] = list[j - 1];
        j--;
      }
      if (j != i) {
        list[j] = temp;
      }
    }
    return list;
  }
}

/**
 * 希尔排序 先分组再执行插入排序
 */
class ShellSort implements SortAlgorithm {
  @override
  List sort(List list) {
    for (int gap = (list.length / 2).toInt();
        gap > 0;
        gap = (gap / 2).toInt()) {
      for (int i = gap; i < list.length; i++) {
        int temp = list[i];
        int j = i;
        while (j >= 0 && j - gap >= 0 && temp < list[j - gap]) {
          list[j] = list[j - gap];
          j -= gap;
        }
        if (j != i) {
          list[j] = temp;
          print(list.toString());
        }
      }
    }
    return list;
  }
}

/**
 * 归并排序
 */
class MergeSort implements SortAlgorithm {
  @override
  List sort(List list) {
    List result = new List(list.length);
    _sort(list, 0, list.length - 1, result);
    return list;
  }

  _sort(List list, int left, int right, List result) {
    if (left < right) {
      int mid = ((left + right) / 2).toInt();
      _sort(list, left, mid, result); //左边归并排序
      _sort(list, mid + 1, right, result); //右边归并排序
      _merge(list, left, mid, right, result); //将左右合并
    }
  }

  _merge(List list, int left, int mid, int right, List result) {
    int i = left; //做序列指针
    int j = mid + 1; //右序列指针
    int t = 0; //临时数组指针

    while (i <= mid && j <= right) {
      if (list[i] <= list[j]) {
        result[t++] = list[i++];
      } else {
        result[t++] = list[j++];
      }
    }

    while (i <= mid) {
      result[t++] = list[i++];
    }

    while (j <= right) {
      result[t++] = list[j++];
    }

    t = 0;
    while (left <= right) {
      list[left++] = result[t++];
    }
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
