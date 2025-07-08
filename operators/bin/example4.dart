void main(List<String> args) {
  //binary infix operators
  const age = 50;
  print(age - 30); //in between 2 operands
  print(age + 20); //in between 2 operands
  print(age * 20); //in between 2 operands
  print(age / 20); //division
  print(age ~/ 20); //truncated division. result will always be an integer (ignores the decimal)
  print(age % 20); //modulo - remainder.
  print(age > 20);
  print(age < 20);
  print(age >= 20);
  print(age <= 20);
  print(age == 20);
  print(age != 20);

  //bitwise infix operators
  print(
    age & 20,
  ); //bitwise AND - convert 2 operands into binary and compare. if both 1, result is 1, if either is 0, result is 0.
  print(
    age | 20,
  ); //bitwise OR - convert 2 operands into binary and compare. if either is 1, result is 1. if both are 0, result is 0.
  print(
    age ^ 20,
  ); //bitwise XOR - convert 2 operands into binary and compare. if result is same, 0. if result is diff, result is 1.
  print(age >> 2); //bitwise right shift 2times
  print(age << 2); //bitwise left shift by 2times
}
