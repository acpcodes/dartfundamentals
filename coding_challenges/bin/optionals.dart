void main(List<String> args) {
  String? foo = greetUser(name: 'Arcel');
  print('Hello, $foo!');
  foo = greetUser();
  print('Hello, $foo!');
}

greetUser({String? name}) => name ?? 'Stranger';
