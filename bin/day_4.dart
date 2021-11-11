// #4 | 100 Days of Psycho Coding Challenge
// CHALLENGE: Build a function that creates histograms. Every bar needs to be on a new line and its length corresponds to the numbers in the array passed as an argument. The second argument of the function represents the character to be used for the bar.
// histogram(arr, char)
// Examples
// —————————
// histogram([1, 3, 4], "#") ➞ "#\n###\n####"
// #
// ###
// ####
// histogram([6, 2, 15, 3], "=") ➞ "======\n==\n===============\n==="
// ======
// ==
// ===============
// ===
// histogram([1, 10], "+") ➞ "+\n++++++++++"
// +
// ++++++++++

import 'dart:io';

void day_4(List<int> arr, String car) {
  for (int i = 0; i < arr.length; i++) {
    for (int j = 1; j <= arr[i]; j++) {
      stdout.write(car);
    }
    print("\n");
  }
}
