void main(List<String> args) {
  print('late fullName is being initialized');
  late final fullName = getFullName();
  final resolvedFullName = fullName;
  print('resolvedFullName = $resolvedFullName');
}

String getFullName() {
  print('getFullName() is called.');
  return 'John Doe';
}

//assigning a late variable to a non late variable resolves the late variable immediately.
