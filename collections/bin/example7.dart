import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = ['John', 'Jane'];
  names.add('Jack');
  final readOnlyList = UnmodifiableListView(names);
  try {
    readOnlyList.add(
      'Jill',
    ); //UnodifiableListView... Would have an exception if not for the try-catch
  } catch (e) {
    print(e);
  }
}
