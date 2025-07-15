void main(List<String> args) {
  final info = {'name': 'Foo', 'age': 10};
  print(info);
  print(info['name']);
  print(info['age']);
  print('---------------------');
  print(info.keys);
  print(info.values);
  info.putIfAbsent('height', () => 180);
  print(info);
  print('*_*_*_*_*_*_*_*_*');
  for (final entry in info.entries) {
    print(entry.key);
    print(entry.value);
  }
  print('*_*_*_*_*_*_*_*_*');
  if (info.containsKey('height')) {
    print('Height is ${info['height']}');
  }
  print('*_*_*_*_*_*_*_*_*');
  print(info['weight']);
  if (info['weight'] == null) {
    print('Not found');
  }
  print('*_*_*_*_*_*_*_*_*');
  final mapWithIntKeys = {10: 20, 30: 40};
  print(mapWithIntKeys);
  print('*_*_*_*_*_*_*_*_*');
  print(mapWithIntKeys.keys);
  print(mapWithIntKeys.values);
  print('*_*_*_*_*_*_*_*_*');
}
//maps = key-value collection.