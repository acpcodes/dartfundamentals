void main(List<String> args) {
  final foo = Person(firstName: 'Foo', lastName: 'Bar');
  print(foo.fullName);
}

class Person {
  final String firstName;
  final String lastName;

  String get fullName => '$firstName $lastName'; //this

  const Person({required this.firstName, required this.lastName});
}


// class Person {
//   final String firstName;
//   final String lastName;

//   final String fullName;

//   const Person({required this.firstName, required this.lastName})
//     : fullName = '$firstName $lastName';
// } 
//
//=> if the calculation for the fullName property is heavy, put it inside the constructor.






//classes can have getters.