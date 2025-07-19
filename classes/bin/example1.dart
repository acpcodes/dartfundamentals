//classes - blueprints of information/logic. Create logic in one place and reuse it everywhere.
//instances - copies of classes you hand out to other part of the code.

void main(List<String> args) {
  const person1 = Person(name: 'AC', age: 20);
  print(person1.name);
  print(person1.age);
}

class Person {
  final String name;
  final int age;

  const Person({required this.name, required this.age});
}
