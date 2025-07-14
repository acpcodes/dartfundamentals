void main(List<String> args) {
  sayHelloTo(name: 'Bob');
}

void sayHelloTo({String? name}) {
  print('Hello, $name!');
}
