void main(List<String> args) {
  describe(1);
  describe(1.1);
  describe('Hello');
  describe(true);
  describe({'Fruits': 'Orange'});
  describe([1, 2, 3]);
  describe(null);
}

void describe<T>(T value) {
  switch (value) {
    case int _:
      print('This is an integer');
      break;
    case double _:
      print('This is a double');
      break;
    case String _:
      print('This is a String');
      break;
    case bool _:
      print('This is a boolean');
      break;
    case Map<String, String> _:
      print('This is a Map');
      break;
    case List<dynamic> _:
      print('This is a list');
    default:
      print('this is something else');
      break;
  }
}
