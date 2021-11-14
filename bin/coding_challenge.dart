// import 'day_1.dart';
// import 'day_2.dart';

// import 'day_4.dart';
import 'day_5.dart';
import 'day_6.dart';
import 'exercise/ex_2.dart';
import 'dart:math';

void main(List<String> arguments) {
  // day_1(100);
  // day_2(12);
  //day_3();
  // day_4([2, 4, 2, 6, 12, 22, 66, 77, 100, 20, 32, 54], '-');
  // func();
  // rangeOfNumbers(2,3);
  // print(secretPassword('mubashirh'));

  // secretPassword("mubashirh") ➞ "h s a j s i 13u2"
  // secretPassword("mattedabi") ➞ "detbcj13a20"]
  var arr = [
    1,
    2,
    3,
    4,
    5,
  ];

  var resultArr = List.filled(arr.length, 0);

  for (var i = 0; i < arr.length; i++) {
    for (var j = 0; j < arr.length; j++) {
      if (i == j) {
        print('${arr[i]} ${arr[j]}');
      } else {
        resultArr[i] += arr[i] + arr[j];
      }
    }
  }

  var res = (resultArr.reduce(max).toString() +
      " " +
      resultArr.reduce(min).toString());
  print(res);
}
