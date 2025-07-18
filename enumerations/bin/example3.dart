void main(List<String> args) {
  final whiskers = AnimalType.cat;
  switch (whiskers) {
    case AnimalType.cat:
      print('This is a cat');
      break;
    default:
      ('This is not a cat');
  }
}

enum AnimalType { rabbit, dog, cat }

//switches also can have default cases.
