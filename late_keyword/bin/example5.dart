void main(List<String> args) {
  final person = Person();
  person.description = 'Description 1';
  print(person.description);
  person.description = 'Description 2';
  print(person.description);

  final woof = Dog();
  woof.description = 'Dog 1';
  print(woof.description);
  try {
    woof.description = 'Dog 2';
    print(woof.description);
  } catch (e) {
    print(e);
  } /*late final String already has a value 'Dog 1', cannot reassign a new value to a late final variable. */
}

String provideName() {
  print('function called');
  return 'Foo Bar';
}

class Person {
  late String description;
}

class Dog {
  late final String description;
}
