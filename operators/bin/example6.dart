void main(List<String> args) {
  //compound assignment operators
  var myAge = 20;
  print(myAge = 30);
  print(myAge ~/= 2); //truncated division and then save the value to the myAge variable.
  print(myAge += 2); //addition and then save the value to the myAge variable.
  print(myAge *= 2); //multiplication and then save the value to the myAge variable.
  print(myAge -= 3); //subtraction and then save the value to the myAge variable.
  print(myAge &= 2); //compare
  //compare the values of myAge and the operand '2' bitwise.
  //if both is 1 then 1, if either is 0 then 0. then save it to the myAge variable.
  print(myAge |= 4);
  print(myAge ^= 10);
}
