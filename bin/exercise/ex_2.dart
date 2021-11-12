// Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.
import 'dart:math';

func() {
  // Write your code here
  List<int> arr = [1, 2, 3, 4, 5];
  List<int> array = [0, 0, 0, 0, 0];
  for (var i = 0; i < arr.length; i++) {
    for (int j = 0; j < arr.length; j++) {
      if (i == j) {
        print('same');
      } else {
        array[i] += arr[j];
      }
    }
  }
  print(array);
  print("${array.reduce(min)} ${array.reduce(max)}  ");

  // console.log(Math.min(...sum)+" "+Math.max(...sum))
}
