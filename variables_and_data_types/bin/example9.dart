void main(List<String> args) {
  const thisList = [1, 2, 3];
  final thatList = thisList;
  // thatList.add(4); invalid code. final variable points to a const variable;
  print(thisList);
  print(thatList);
}
