import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = {'Foo', 'Bar', 'Baz', 'Qux'};
  names.add('Foo');
  print(names);
  print('----------');
  final names2 = ['Foo', 'Bar', 'Baz', 'Foo'];
  print(names2);
  print('----------');
  final uniqueNames = {...names2}; //spread operator for Set<>. very handy for removing duplicates
  print(uniqueNames);
  print('----------');
  final foo1 = 'Foo';
  var foo2 = 'Foo';
  print(foo1.hashCode);
  print(foo2.hashCode);
  print('----------');
  if (names.contains('Foo')) {
    print('Found Foo');
  } else {
    print('not found');
  }
  print('----------');
  final ages1 = {20, 30, 40};
  final ages2 = {20, 30, 40};
  print(ages1.hashCode);
  print(ages2.hashCode); //instances wouldnt be equal.
  if (ages1 == ages2) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }
  print('----------');
  if (SetEquality().equals(ages1, ages2)) {
    print('Ages are equal');
  } else {
    print(
      'Ages are not equal.',
    ); //SetEquality class is from the imported package 'collection.dart' -- 'dart pub add collection'
  }
  print('----------');
  final ages3 = {40, 30, 20};
  if (SetEquality().equals(ages2, ages3)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal.');
  }
}




//sets - collection of values that cannot have duplicates. ('unique' list)