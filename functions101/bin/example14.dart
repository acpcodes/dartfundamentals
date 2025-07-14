void main(List<String> args) {
  print(add()); //will use default values
  print(add(3)); // 3 will be the value of parameter 'a'.
  print(add(5, 3)); // 'a' will be 5 'b' will be 3
}

int add([int a = 1, int b = 2]) {
  return a + b;
}
