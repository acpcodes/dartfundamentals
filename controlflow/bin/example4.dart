void main(List<String> args) {
  const names = ['John', 'Paul', 'George', 'Ringo'];
  var counter = 0;
  while (counter < names.length) {
    print(names[counter++]);
    //or counter++;
  }
  print('----------');
  var reverseCounter = names.length;
  while (--reverseCounter >= 0) {
    print(names[reverseCounter]);
  }
  print('----------');
  counter = 0;
  do {
    print(names[counter]);
    counter++;
  } while (counter < names.length);

  print('----------');
  counter = 0;
  do {
    print(names[counter]);
    counter++;
    if (counter == 2) {
      break; //use break to stop a loop if the condition is met.
    }
  } while (counter < names.length);

  print('----------');
  counter = 0;
  do {
    final name = names[counter++];
    if (name == 'George') {
      continue; //use continue to skip a met condition.
    }
    print(name);
  } while (counter < names.length);

  print('----------');
  counter = 0;
  do {
    final name = names[counter++];
    if (name.contains('o')) {
      continue;
    }
    print(name);
  } while (counter < names.length);
}

  //while loop