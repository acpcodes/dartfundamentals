void main(List<String> args) {
  greetUser(name: 'Arcel');
  greetUser();
}

greetUser({String? name}) => print('Hello, ${name ?? 'Stranger'}!');
