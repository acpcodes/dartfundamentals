void main(List<String> args) {
  addToArrayWrong();
  print('________________');
  addToArrayRight();
  print('________________');
  //addToDictionaryWrong();
  print('________________');
  addToDictionaryRight();
}

void addToArrayWrong() {
  final names1 = ['Foo 1', 'Bar1', 'Baz 1'];
  final names2 = ['Foo 2', 'Bar2', 'Baz 2'];
  final allNamesWrong = names1;
  allNamesWrong.addAll(names2);
  print(names1);
  print(names2);
  print(allNamesWrong);
}

void addToArrayRight() {
  final names1 = ['Foo 1', 'Bar1', 'Baz 1'];
  final names2 = ['Foo 2', 'Bar2', 'Baz 2'];
  final allNamesRight = {...names1, ...names2};
  allNamesRight.addAll(names2);
  print(names1);
  print(names2);
  print(allNamesRight);
}

// void addToDictionaryWrong() {
//   const info = {'name': 'Foo', 'age': 30, 'height': 1.7};
//   final result = info;
//   result.addAll({'weight': 80});
// }

void addToDictionaryRight() {
  const info = {'name': 'Foo', 'age': 30, 'height': 1.7};
  final result = {...info}..addAll({'weight': 70});
  print(result);
}
//spread operator with collection