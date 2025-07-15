void main(List<String> args) {
  final string = 'abracadabra';
  var allExceptAbc = {for (final char in string.split('')) 'abc'.contains(char) ? null : char}
    ..removeAll([null])
    ..cast<String>();
  print(allExceptAbc);
  // var allExceptAbc = '';
  // for (final char in string.split('')) {
  //   if (char == 'a' || char == 'b' || char == 'c') {
  //   } else {
  //     allExceptAbc += char;
  //   }
  // }
  // print(allExceptAbc);
  print('_____________________');
  final allNumbers = Iterable.generate(100);
  final evenNumbers = [
    for (final number in allNumbers)
      if (number % 2 == 0) number,
  ];
  print(evenNumbers);
  print('_____________');
  final evenNumbersFunctional = allNumbers.where((number) => number % 2 == 0);
  print(evenNumbersFunctional);
  print('_____________');
  final oddNumbersFunctional = allNumbers.where((number) => number % 2 != 0);
  print(oddNumbersFunctional);
  print('_____________');
  final names = ['John Doe', 'Jane Doe', 'John Smith'];
  final namesAndLengths = {for (final name in names) name: name.length};
  print(namesAndLengths);
}
