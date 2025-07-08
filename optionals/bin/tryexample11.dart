void main(List<String> args) {
  print(getFullName(null, null));
}

String getFullName(String? firstName, String? lastName) {
  String? result = withAll([firstName, lastName], (names) {
    return names.join(' ');
  });

  return result ?? 'Empty';
}

String? withAll(List<String?> optionals, String Function(List<String>) callback) {
  bool hasNull = optionals.any((value) {
    return value == null;
  });

  if (hasNull) {
    return null;
  } else {
    return callback(optionals.cast<String>());
  }
}
