import 'package:collection/collection.dart';

void main(List<String> args) {
  final info = {
    'name': 'John',
    'age': 30,
    'address': {'street': 'Main Street', 'city': 'New York'},
  };
  print(info);
  final info2 = UnmodifiableMapView(info); //this
  try {
    info2.addAll({
      'phone': '123-456-7890',
    }); //unsupported operation: cannot modify an unmodifiable map.
  } catch (e) {
    print(e);
  }
}
