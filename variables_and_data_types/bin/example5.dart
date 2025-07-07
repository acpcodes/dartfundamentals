void main(List<String> args) {
  const age = 10;
  final age2 = age;
  print(age2);
  // constant values can be assigned to final values, but not the other way around.
  // const age3 = age2; --> invalid code
}
