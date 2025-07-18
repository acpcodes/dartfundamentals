void main(List<String> args) {
  final car = Car();
  try {
    car.drive(speed: 10);
    car.drive(speed: -10);
    car.drive(speed: 100);
  } catch (e) {
    print(e);
  }
}

class Car {
  int _speed = 0;
  int get speed => _speed;
  set speed(int newSpeed) {
    if (newSpeed < 0) {
      throw Exception('Speed cannot be negative');
    }
    _speed = newSpeed;
  }

  void drive({required int speed}) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop() {
    speed = 0;
    print('Stopping....');
    print('Stopped.');
  }
}

//Setters - ability to control when someone changes the value of your classes.
