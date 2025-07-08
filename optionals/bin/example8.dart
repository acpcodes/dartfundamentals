void main(List<String> args) {
  final String? firstName = null;
  final int? length1 = firstName?.length;

  if (firstName == null) {
    print('firstName value is null');
  } else {
    final int lengthh = firstName.length;
    print(lengthh);
  }
  print(length1);
}
//you can promote a type to non-nullable by checking first if its null or not.