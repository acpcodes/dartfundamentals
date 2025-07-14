void main(List<String> args) {
  print(minus());
  print(subtract());
  print(add());

  print(performOperation(12, 20, add));
}

int performOperation(int a, int b, int Function(int, int) operation) => operation(a, b);

int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;

int subtract([int left = 10, int right = 5]) {
  return (left - right);
}

int add([int addLeft = 10, int addRight = 20]) => addLeft + addRight;

//functions can become arrow (=>) functions, to omit {return}.

//both functions above (minus and subtract) will resolve to the same result, but arrow functions make it simpler, in comparison to using curly{} and 'return'.

//functions as first class citizens, meaning if you can pass a variable to a function, you should also be able to pass a function to a function.
