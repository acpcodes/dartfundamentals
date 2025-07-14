void main(List<String> args) {
  makeUpperCase();
}

void makeUpperCase([String? name, String lastName = 'Bar']) {
  print(name?.toUpperCase());
  print(lastName.toUpperCase());
}

//optional positional arguments can be optional and ommited, or they can be non-optional and required.
