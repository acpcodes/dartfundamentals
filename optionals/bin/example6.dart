void main(List<String> args) {
  List<String?>? names = [];
  names?.add(null);
  names?.add('Foo');
  print(names ?? 'no names found');

  final String? first = names?.first;
  print(first ?? 'no first name found');

  names = [];
  names.add('baz');
  names.add(null);
  print(names);
}
//nullable collections