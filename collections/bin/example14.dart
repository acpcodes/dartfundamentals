import 'package:collection/collection.dart';

void main(List<String> args) {
  testBoolList();
  print('----------------');
  testCanonicalizedMap();
  print('----------------');
  testCombinedIterableView();
}

void testCombinedIterableView() {
  final oneCIV = [1, 2, 3];
  final twoCIV = [10, 20, 30];
  final threeCIV = [100, 200, 300];
  var combined = CombinedIterableView([oneCIV, twoCIV, threeCIV]);
  print(combined);
}

void testCanonicalizedMap() {
  final info = {
    'name': 'John',
    'age': 30,
    'sex': 'male',
    'bla': 'bla',
    'address': {'street': 'Main Street', 'city': 'New York'},
  };
  final canonMap = CanonicalizedMap.from(info, (key) => key.length);
  print(canonMap);
}

void testBoolList() {
  final boolList = BoolList(10, growable: true);
  print(boolList);
  boolList[3] = true;
  if (boolList[3]) {
    print('boolList[3] is true');
  } else {
    print('boolList[3] is false');
  }
  print(boolList);
  boolList.length *= 2;
  print(boolList);
}
