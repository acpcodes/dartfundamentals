void main(List<String> args) {
  late final myValue = 100;
  print(myValue);

  late final yourValue = getValue();
  print('We are Here');
  print(yourValue);
}

int getValue() {
  print('getValue Called');
  return 10;
}
//late variables are only initialized when theyre first used; 