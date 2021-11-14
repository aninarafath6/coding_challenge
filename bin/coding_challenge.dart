// import 'day_1.dart';
// import 'day_2.dart';

// import 'day_4.dart';
import 'DSA/linked_list.dart';
// import 'day_5.dart';
// import 'day_6.dart';
// import 'exercise/ex_2.dart';
// import 'dart:math';

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

  LinkedList list = LinkedList();
  list.display();
  list.add(2);
  list.add(3);
  list.add(4);
  // list.addAt(2, 1);
  // list.addFirst(1000);
  list.addLast(2000);

  list.display();

  print('getters');
  // print(list.first);
  // print(list.last);
  print(list.getNext(4));
  print(list.find(200));
}
