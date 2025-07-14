late String name;
void main(List<String> args) {
  try {
    print(name);
  } catch (e) {
    print(e);
  }
  name = 'Foo Bar';
  print(name);
}

//late variables are intialized when theyre first used.
//tells that this variable is gonna have a value for sure, but not right now.
