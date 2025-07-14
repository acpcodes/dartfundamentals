void main(List<String> args) {
  final johnDoe = Person(name: 'John Doe');
  final janeDoe = Person(name: 'Jane Doe');
  final doeFamily = WrongFamily(members: [johnDoe, janeDoe]);
  print(doeFamily);
  print(doeFamily.membersCount);
  print('');

  final johnSmith = Person(name: 'John Smith');
  final janeSmith = Person(name: 'Jane Doe');
  final smithFamily = RightFamily(members: [johnSmith, janeSmith]);
  print(smithFamily);
  print(smithFamily.membersCount);
}

class Person {
  final String name;
  Person({required this.name});
}

class WrongFamily {
  final Iterable<Person> members;
  late int membersCount;

  WrongFamily({required this.members}) {
    membersCount = getMembersCount();
  }

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}

class RightFamily {
  final Iterable<Person> members;
  late int membersCount = getMembersCount();

  RightFamily({required this.members});

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}
