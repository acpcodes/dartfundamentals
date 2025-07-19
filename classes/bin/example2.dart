void main(List<String> args) {
  const me = Person('ACarlo', 20);
  print('\n');
  print(me.name);
  print(me.age);
  print('______________');
  const foo = Person.foo();

  print(foo.name);
  print(foo.age);
  print('______________');
  const bar = Person.bar(21);
  print(bar.name);
  print(bar.age);
  print('______________');
  const baz = Person.other();
  print(baz.name);
  print(baz.age);
  print('______________');
  const john = Person.other(name: 'John');
  print(john.name);
  print(john.age);
  print('______________');
  const jill = Person.other(age: 25, name: 'Jill');
  print(jill.name);
  print(jill.age);
}

class Person {
  final String name;
  final int age;

  const Person(this.name, this.age); // constructor

  const Person.foo() : name = 'Foo', age = 30;

  const Person.bar(this.age) : name = 'Bar';

  const Person.other({String? name, int? age})
    : name = name ?? 'Baz',
      age = age ?? 25; // constructor with default values.
}


//classes can have different types of constructors.