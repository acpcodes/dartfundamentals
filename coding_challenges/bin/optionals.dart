void main(List<String> args) {
  String? foo = greetUser(name: 'Arcel');
  print('Hello, $foo!');
  foo = greetUser();
  print('Hello, $foo!');
}

greetUser({String? name}) => name ?? 'Stranger';

//this program will either greet the user with their name, or if the user doesnt input a name, will greet them with 'Stranger'
