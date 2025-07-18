void main(List<String> args) {
  AnimalType.cat
    ..jump()
    ..run();
  AnimalType.dog
    ..jump()
    ..run();
  AnimalType.rabbit
    ..run()
    ..jump();
}

enum AnimalType {
  dog,
  cat,
  rabbit;

  void run() {
    print('$this is running...');
  }
}

extension Jump on AnimalType {
  void jump() {
    print('$this is jumping....');
  }
}


//extending enums - you can add functions to enums - inside and outside.