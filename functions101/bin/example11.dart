void main(List<String> args) {
  sayGoodbyeTo('Baz', 'Bar');
}

void sayGoodbyeTo(String person, String andOtherPerson) {
  print('Goodbye, $person and $andOtherPerson');
}
//positional parameters
//passed in order
//dont have names in call site
//always required
//cant have default values