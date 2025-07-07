void main(List<String> args) {
  const int someInteger = 255; //whole numbers
  const double someDouble = 20.5; //floating point
  const String someString = 'Hello'; //Strings!
  const bool someBool = true; //boolean
  const List<int> someList = [1, 3, 5]; //similar to array
  const Map<String, String> someMap = {'foo': 'bar'};
  const Set<int> someSet = {1, 2, 3};
  dynamic someNull;
  const Symbol someSymbol = #someNull;
  print(someInteger.bitLength);
  print(someDouble);
  print(someString);
  print(!someBool); // '!' pre-notation makes this false; flipped;
  print(someList.length);
  print(someMap['foo']);
  print(someSet.length);
  print(someNull);
  print(someSymbol);
}

  ///List = ordered, allows duplicates, indexable
  ///Set = unordered, no duplicates, not indexable