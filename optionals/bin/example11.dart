void main(List<String> args) {
  print(getFullName(null, null));
}

String getFullName(String? firstName, String? lastName) =>
    withAll([firstName, lastName], (names) => names.join(' ')) ?? 'Empty';

String? withAll(List<String?> optionals, String Function(List<String>) callback) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<String>());

//you can unwrap multiple nullable values at the same time.
