void main(List<String> args) {
  print('Full Name Set');
  greetYou(firstName: 'Arcel Carlo', lastName: 'Parrilla', nickName: null);
}

void greetYou({required String firstName, required String lastName, String? nickName}) {
  late String fullName = '$firstName $lastName';
  int age = 28;
  String greetingName = nickName ?? fullName;

  print('Hello, $greetingName');
  print('You are ${age * 12} months old');
}


//a program that showcases the use of a late variable, display the combined first and last name (fullname) input, and the age converted into months.