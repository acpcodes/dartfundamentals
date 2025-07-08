void main() {
  print(makeFullName('Arcel Carlo', 'Parrilla')); // prints "Empty"
}

// This function tries to make a full name from first and last
String makeFullName(String? first, String? last) {
  return combineIfNotNull([first, last], (names) => names.join(' ')) ?? 'Empty';
}

// This function checks if any value is null before combining
String? combineIfNotNull(List<String?> values, String Function(List<String>) doWhenAllPresent) {
  // If any value is null, return null
  if (values.any((v) => v == null)) return null;

  // Otherwise, run the function using the safe values
  return doWhenAllPresent(values.cast<String>());
}
