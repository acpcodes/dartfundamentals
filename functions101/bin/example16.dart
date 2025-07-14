void main(List<String> args) {
  print(doSomething(20, 30)());
}

int Function() doSomething(int lhs, int rhs) =>
    () => lhs + rhs;

//a function can return a function.
//only for demonstration. dont do this in production code.
