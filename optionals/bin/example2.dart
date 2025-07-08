void main(List<String> args) {
  //if youre working with the value 'null', and you dont have a specific data type for it,
  //dart understoods it as type Dynamic.
  //adding ? to a type means nullable of a specific type
  //dynamic means anything goes
  const int? someValue = null;
  print(someValue);
}
