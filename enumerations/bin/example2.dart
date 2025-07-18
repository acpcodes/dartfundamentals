void main(List<String> args) {
  final foo = Person(car: Car.teslaModelS, name: 'Foo');
  switch (foo.car) {
    case Car.teslaModelS:
      print("${foo.name}'s car is a Tesla Model S = ${foo.car}");

      break;
    default:
  }
}

class Person {
  final String name;
  final Car car;
  const Person({required this.name, required this.car});
}

enum Car {
  teslaModelS(manufacturer: 'Tesla', model: 'Model S', year: 2022),
  teslaModel3(manufacturer: 'Tesla', model: 'Model 3', year: 2025),
  teslaModelX(manufacturer: 'Tesla', model: 'Model X', year: 2023),
  teslaModelY(manufacturer: 'Tesla', model: 'Model Y', year: 2024);

  final String manufacturer;
  final String model;
  final int year;

  const Car({required this.manufacturer, required this.model, required this.year});

  @override
  String toString() => 'Car: $manufacturer $model $year';
}



//'enhanced' enums