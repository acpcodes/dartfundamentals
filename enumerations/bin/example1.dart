void main(List<String> args) {
  final woof = Animal(name: 'Woof', type: AnimalType.wolf);

  if (woof.type == AnimalType.dog) {
    print('Woof is a dog');
  } else {
    print('Woof is not a dog');
  }

  switch (woof.type) {
    case AnimalType.rabbit:
      print('Animal is a rabbit');
      break;
    case AnimalType.dog:
      print('Animal is a dog');
      break;
    case AnimalType.cat:
      print('Animal is a cat');
      break;
    case AnimalType.wolf:
      print('Animal is a wolf');
      break;
  }
}

enum AnimalType { rabbit, dog, cat, wolf }

class Animal {
  final String name;
  final AnimalType type;

  const Animal({required this.name, required this.type});
}

//enumerations allow you to create similar objects in one structure.
