void main(List<String> args) {
  doSomething(age: 0);
}

void doSomething({required int? age}) {
  if (age != null) {
    final in2Years = age + 2;
    print('in 2 years, you will be $in2Years years old');
  } else {
    print('you did not tell me your age');
  }
}
