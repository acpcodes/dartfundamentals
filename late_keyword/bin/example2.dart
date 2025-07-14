void main(List<String> args) {
  print('Before');
  late String name = provideName();
  print('After');
  print(name);
}

String provideName() {
  print('Function is Called');
  return 'Foo Bar';
}
