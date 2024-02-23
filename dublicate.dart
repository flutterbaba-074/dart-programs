
//dublicates ke liye
// void main() {
//   // Initialize a boolean variable to track duplicate presence
//   bool duplicate = false;

//   // Input list
//   List<int> arr = [2, 4, 5, 6, 7, 2, 7, 4, 2, 3];
  
//   // Iterate over the array to find duplicates
//   for (int i = 0; i < arr.length; i++) {
//     for (int j = 0; j < i; j++) {  // Compare each element with previous elements
//       if (arr[i] == arr[j]) {  // If a duplicate is found
//         duplicate = true;  // Set the flag to true
//         break;  // Exit the inner loop since duplicate is already found
//       }
//     }
//     if (duplicate) {  // If a duplicate is found, no need to continue checking
//       break;  // Exit the outer loop
//     }
//   }
  
//   // Check if a duplicate was found and print the appropriate message
//   if (duplicate) {
//     print("Duplicate is available");
//   }
// }
///dublicates ko print krne ke liye
void main() {
  // Input list
  List<int> arr = [2, 4, 5, 6, 7, 2, 7, 4, 2, 3];
  
  // Initialize an empty set to store unique elements
  Set<int> uniqueElements = {};
  
  // Initialize an empty list to store duplicate elements
  List<int> duplicates = [];
  
  // Iterate over the array to find duplicates
  for (int i = 0; i < arr.length; i++) {
    if (!uniqueElements.add(arr[i])) {  // If element already exists in the set
      duplicates.add(arr[i]);  // Add it to duplicates list
    }
  }
  
  // Check if any duplicates were found and print them
  if (duplicates.isNotEmpty) {
    print("Duplicates found: $duplicates");
  } else {
    print("No duplicates found.");
  }
}
