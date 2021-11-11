void day_2(int leng) {
// If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
// If all the numbers from 1 to 100 (one hundred) inclusive were written out in words, how many letters would be used?
// Note :  Do not count spaces. For example twenty four - this contains letters and spaces

  Map<String, List<String>> values = {
    'single_digits': [
      '',
      '',
      'one',
      'two',
      'three',
      'four',
      'five',
      'six',
      'seven',
      'eight',
      'nine',
    ],
    'two_digits': [
      '',
      'eleven',
      'twelve',
      'thirteen',
      'fourteen',
      'fifteen',
      'sixteen',
      'seventeen',
      'eighteen',
      'nineteen',
    ],
    'tens_multiple': [
      'twenty',
      'thirty',
      'forty',
      'fifty',
      'sixty',
      'seventy',
      'eighty',
      'ninety'
    ],
    'tens_power': [
      'hundred',
      'thousand',
    ],
  };
  List<String> letters = [];

  for (int i = 1; i <= leng; i++) {
    if (i > 0 && i <= 10) {
      letters.add(values['single_digits']![i]);
    } else if (i > 9 && i <= 19) {
      letters.add(values['two_digits']![i - 10]);
    } else if (i > 19 && i < 30) {
      for (int j = 1; j <= 1; j++) {
        letters.add(values['tens_multiple']![i - 20] +
            ' ' +
            values['single_digits']![j]);
      }
    }
  }

  print(letters);
  print(letters.join().split('').length);
}
