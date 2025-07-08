void main(List<String> args) {
  try {
    final String? firstName = null;
    print(firstName ?? 'No names found'); // '!' postfix to force a nullable value to be unwrapped.
    //unsafe and causes your app to crash if the value is indeed null.
  } catch (error) {
    print(error);
  }
}
