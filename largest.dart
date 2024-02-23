import 'dart:math';

void main() {
  List<int> arr = [2, 100, 4, 33, 6];
  int lar = arr[0]; // Initialize lar with the first element of arr
  int secondLar = arr[0]; // Initialize secondLar with the first element of arr
  int sma = arr[0]; // Initialize sma with the first element of arr
  int secondSma = arr[0]; // Initialize secondSma with the first element of arr

  for (int i = 1; i < arr.length; i++) { // Start the loop from index 1 since we already used index 0
    if (arr[i] > lar) {
      secondLar = lar; // Update secondLar with the previous value of lar
      lar = arr[i]; // Update lar if the current element is larger
    } else if (arr[i] > secondLar && arr[i] != lar) {
      secondLar = arr[i]; // Update secondLar if the current element is larger than the current secondLar but not equal to lar
    }
    if (arr[i] < sma) {
      secondSma = sma; // Update secondSma with the previous value of sma
      sma = arr[i]; // Update sma if the current element is smaller
    } else if (arr[i] < secondSma && arr[i] != sma) {
      secondSma = arr[i]; // Update secondSma if the current element is smaller than the current secondSma and not equal to sma
    }
  }

  print("Second largest element: $secondLar");
  print("Second smallest element: $secondSma");
}
