void main(List<String> args) {
  // ?. ?? !.
  String? lastName;

  void changeLastName() {
    lastName = 'Bar';
    print(lastName);
  }

  changeLastName();

  if (lastName?.contains('Bar') ?? false) {
    print('Last Name contains Bar');
  }
  if (lastName?.contains('Bar') == true) {
    print('Last Name contains bar');
  }
}
