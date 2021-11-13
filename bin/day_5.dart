// Challenge: We have defined a function named rangeOfNumbers with two parameters. The function should return an array of integers which begins with a number represented by the startNum parameter and ends with a number represented by the endNum parameter. The starting number will always be less than or equal to the ending number.

// SHOULD NOT USE ANY KIND OF LOOPS

// It should also work for cases where both startNum and endNum are the same.

void rangeOfNumbers(s, e) {

  List array = [];
  void fill() {
    if (s > e) return;
    array.add(s++);
    fill();
  }

  fill();
  print(array);
}
