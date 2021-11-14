// #6 | 100 Days of Psycho Coding Challenge

// Mr.Luttappi is going on a secret mission.
// He needs your help but you have to learn how to encode a secret password to communicate safely with other agents.
// Create a function that takes an argument message and returns the encoded password.

// secretPassword("mubashirh") ➞ "hsajsi13u2"

// Rules
// ======
// Step 1:
// -----------------
// Message length should be of nine characters containing only lowercase letters from 'a' to 'z'. If the argument doesn't meet this requirement you must return "BANG! BANG! BANG!" (Remember, there are no second chances in the spy world!)

// Step 2:
// -----------------
// Divide the string into three equal parts of three characters each:
// 1 - mub
// 2 - ash
// 3 - irh

// Step 3:
// -----------------
// Convert the first and third letter to the corresponding number, according to the English alphabets (ex. a = 1, b = 2, c = 3 ... z = 26, etc).

// Step 4:
// -----------------
// Reverse the fourth, fifth, and sixth letters:
// ash = hsa

// Step 5:
// -----------------
// Replace seventh, eighth, and ninth letter with next letter (z will be substituted with a).
// irh = jsi

// Step 6:
// -----------------
// Return the string in the following order: "Part_2+Part_3+Part_1"
// "hsajsi13u2"

// See the below examples for a better understanding:
// -----------------

// Examples
// secretPassword("mubashirh") ➞ "h s a j s i 13u2"

// secretPassword("mattedabi") ➞ "detbcj13a20"

// secretPassword("HeLen-eda") ➞ "BANG! BANG! BANG!"
// // Length is not equal to 9
// // Contains characters other than lower alphabets

String secretPassword(String password) {
  if (password.length < 9 || password.length > 9 ||   password.contains(RegExp('[0-9]'))) return 'BANG! BANG! BANG';

  List<String> firstPart = password.substring(0, 3).split('');
  List<String> middlePart = password.substring(3, 6).split('').reversed.toList();
  List<String> lastPart = password.substring(6, 9).split('');
  List<String> alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('');

  firstPart[0]=(check(alphabet,firstPart.first));
  firstPart[0] = (check(alphabet, firstPart.last));

  for (var i = 0; i < lastPart.length; i++) {
    var UV = (alphabet.indexWhere((element) => lastPart[i] == element) + 1);
    lastPart[i] =(alphabet[UV == 26 ? 0 : UV]);
  }
  return [...middlePart, ...lastPart, ...firstPart].join();
}

 check(List<String> alphabet,elem) => (alphabet.indexWhere((element) => element == elem) + 1).toString();
