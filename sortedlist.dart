void main() {
  bool flag = false;
  List<int> arr = [10, 20, 30, 40, 50, 60];

  for (int i = 1; i < arr.length; i++) {
    if (arr[i] < arr[i - 1]) {
      flag = true;
      break; // Once we find an unsorted element, no need to continue checking
    }
  }

  if (flag) {
    print("Array is not sorted");
  } else {
    print("Array is sorted");
  }
}
