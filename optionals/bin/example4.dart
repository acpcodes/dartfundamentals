void main(List<String> args) {
  //nullable values, by default, have a value of null.
  int? a;
  print(a); //this will output null.
  a ??= 2; // '??=' assign the value on the right, to the variable, ONLY if left's value is null.
  // called the null-aware assignment operator
  print(a);
}
