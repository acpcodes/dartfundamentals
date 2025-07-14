void main(List<String> args) {
  const info = {
    'name': 'Arcel Carlo Parrilla',
    'age': 28,
    'height': 1.7,
    'isMarried': false,
    'address': {'street': '123 Main Street', 'city': 'General Trias', 'country': 'Philippines'},
  };
  for (final entry in info.entries) {
    print('${entry.key}: ${entry.value}');
  }
}

//you can execute for loops within maps using the '.value' property.
