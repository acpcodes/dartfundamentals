void main(List<String> args) {
  doSomething(name: 'name');
  // doSomething(); invalid code.
  doSomething(name: null);
}

void doSomething({required String? name}) {
  print('Hello, $name!');
}

//required parameter
