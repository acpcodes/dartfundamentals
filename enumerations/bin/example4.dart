void main(List<String> args) {
  describe(animalType(fromStr: 'rabbit'));
  describe(animalType(fromStr: 'dog'));
  describe(animalType(fromStr: 'cat'));
  describe(animalType(fromStr: 'horse'));
}

void describe(AnimalType? animalType) {
  switch (animalType) {
    case AnimalType.rabbit:
      print('rabbit');
      break;
    case AnimalType.dog:
      print('dog');
      break;
    case AnimalType.cat:
      print('cat');
      break;
    default:
      print('no such animal');
      break;
  }
}

AnimalType? animalType({required String fromStr}) {
  try {
    return AnimalType.values.firstWhere((element) => element.name == fromStr);
  } catch (e) {
    return null;
  }
}

enum AnimalType { rabbit, dog, cat }

//you can create instances of enum from a String.
