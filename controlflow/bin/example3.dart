void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];
  print('---Start---');
  for (var i = 0; i < names.length; i++) {
    print(names[i]); //traditional for-loop - will print elements from each index.
  }
  print('---1st---');

  for (final name in names) {
    print(name);
  }
  print('---2nd---');
  for (final name in names) {
    if (name.startsWith('B')) {
      continue;
    }
    print(name);
  }
  print('---3rd---');
  for (final name in names) {
    if (name == 'Baz') {
      break;
    }
    print(name);
  }
  print('----4th----');
  for (final name in names) {
    if (name == 'Qux') {
      continue;
    }
    print(name);
  }
  print('----5th----');
  for (final name in names.reversed) {
    print(name);
  }
  for (final value in Iterable.generate(names.length)) {
    print(value);
  }
}

//modern for-in loop
