void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];

  for (final name in names) {
    print(name);
  }
  print('----------');
  for (final name in names.reversed) {
    print(name);
  }
  print('----------');
  if (names.contains('Bar')) {
    print('Bar is in the list');
  }
  print('----------');
  for (final name in names.where((String name) => name.startsWith('B'))) {
    print(name);
  }
  print('----------');
  print(names.elementAt(0));
  print(names[1]);
  print(names[2]);
  print(names[3]);
  print('----------');
  names.sublist(1).forEach(print);
  print('----------');
  names.sublist(1, 3).forEach(print);
  print('----------');
  names.sublist(2, 3).forEach(print);
  print('----------');
  final ages = [20, 30, 40];
  ages.add(50);
  ages.add(60);
  print(ages);
  print('----------');

  const names1 = ['Foo', 'Bar', 'Baz', 'Qux'];
  const names2 = ['Foo', 'Bar', 'Baz', 'Qux'];
  if (names1 == names2) {
    print('both lists are equal.');
  } else {
    print('their names are not equal.');
  }
  print('----------');
  //mapping is the function of going thru a list, iterating, and then converting them into another value of the same type, or another value of a different type.
  ['Foo', 'Bar', 'Baz', 'Qux'].map((str) => str.toUpperCase()).forEach(print);
  print('----------');
  ['Foo', 'Bar', 'Baz', 'Qux'].map((str) => str.replaceAll('Bar', 'Bear')).forEach(print);
  print('----------');
  names.map((str) => str.contains('Bar')).forEach(print);
  print('----------');
  final addAll = [1, 2, 3, 4, 5];
  var sum = 0;
  for (final add in addAll) {
    sum += add;
  }
  print(sum);
  print('----------');
  final numbers = addAll.fold(0, (int previousValue, int thisValue) => previousValue + thisValue);
  print(numbers);
  print('----------');
  final totalLength = names.fold(0, (totalLength, str) => totalLength + str.length);
  print(totalLength);
  print('----------');
  final results = names.fold('', (result, str) => '$result ${str.toUpperCase()}');
  print(results);
} 



// lists = arrays.
//collection of values written in serial.
//starts from 0 to N.