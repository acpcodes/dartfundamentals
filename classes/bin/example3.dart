void main(List<String> args) {
  final v = Vehicle(4);
  print(v);
  print(v.wheelCount);
  print(v.toString());
  print(v.wheelCount.toString());
  print(Car()); //inheritance
  print(Bicycle()); //inheritance.
}

class Vehicle {
  final int wheelCount;
  const Vehicle(this.wheelCount);

  @override
  String toString() {
    // if (runtimeType == Vehicle) {
    //   return '$runtimeType with $wheelCount wheels';
    // } else {
    //   return super.toString();
    // }
    return '$runtimeType with $wheelCount wheels';
  }
}

class Car extends Vehicle {
  const Car() : super(4);
}

class Bicycle extends Vehicle {
  const Bicycle() : super(2);
}

//subclassing - inheriting logic from one class to another.
