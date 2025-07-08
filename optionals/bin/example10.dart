void main(List<String> args) {
  String? getFullNameOptional() {
    return null;
  }

  String getFullNameRequired() {
    return 'Fizz';
  }

  final String fullName = getFullNameOptional() ?? getFullNameRequired();
  print(fullName);

  final someName = getFullNameOptional();
  someName.describe();
}

/// an extension that can describe an optional value. IF the value is null, then the function
/// will say this function is null. otherwise it will tell it's type.

extension Describe on Object? {
  void describe() {
    if (this == null) {
      print('this object is null!');
    } else {
      print('$runtimeType: $this');
    }
  }
}
