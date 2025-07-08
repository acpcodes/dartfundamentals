void main(List<String> args) {
  //type promotion
  const num aa = 1.1;
  const double1 = 1.1;
  const result = aa + double1; //variable result becomes double because one operand is a double.
  //double is much more precise than int because it accounts for the decimal, while int only deals with whole numbers.
  print(result);
}
