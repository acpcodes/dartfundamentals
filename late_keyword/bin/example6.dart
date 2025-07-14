void main(List<String> args) {
  final person = Person();
  try {
    //avoid doing this in real code, its against the guidelines, use nullables instead.
    print(person.fullName);
  } catch (e) {
    print(e);
  }
  person.firstName = 'Foo';
  person.lastName = 'Bar';
  print(person.fullName);
}

class Person {
  late final String firstName;
  late final String lastName;
  late String fullName = '$firstName $lastName';
}
