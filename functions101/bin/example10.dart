void main(List<String> args) {
  describePerson(age: 3, name: '3');
}

void describePerson({String? name, int? age}) {
  print('Hey $name, you are $age years old.');
}
