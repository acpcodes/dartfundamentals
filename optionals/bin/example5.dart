void main(List<String> args) {
  String? lastName;
  print(lastName?.length);

  ///
  ///
  ///
  ///
  String? nullName;
  print(nullName ?? 'Foo');
  print(nullName);
  print(nullName ??= 'Bar');
  print(nullName);
}
