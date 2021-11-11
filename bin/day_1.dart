// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5,
// 6 and 9. The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000.

void day_1(int target) {
  print('==== Day_1 =====');

  Set<int> values = {};

  for (int i = 1; i < target; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      values.add(i);
    }
  }
  int result = values.reduce((value, element) => value + element);
  print(result);
}
