void main(List<String> args) {
  final myCar = Car();
  myCar.drive(speed: 80);
  print('Speed is ${myCar.speed}');
}

class Car {
  int speed = 0;

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


//methods - basically functions that are inside classes.