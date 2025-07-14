import 'dart:math';

void main(List<String> args) {
  print('User profile initiated');
  greetYou(firstName: 'Arcel', lastName: 'Parrilla', nickName: 'AC');
}

void greetYou({required String firstName, required String lastName, String? nickName}) {
  late String fullName = '$firstName $lastName';
  int age = 28;
  const double weightKG = 64;
  const double heightM = 1.705;
  double bmi = (weightKG / (pow(heightM, 2).toDouble()));

  String greetingName = nickName ?? fullName;
  print('Hello, $greetingName! have fun learning dart!');
  print('Full name: $fullName');
  print('You are $age years old. (${age * 12}) months.');
  if (bmi >= 30) {
    print('Your BMI is ${bmi.toStringAsFixed(2)}. You are Obese!');
  } else if (bmi >= 25) {
    print('Your BMI is ${bmi.toStringAsFixed(2)}. You are Overweight!');
  } else if (bmi >= 18.5) {
    print('Your BMI is ${bmi.toStringAsFixed(2)}. You are at the normal range, keep it up!');
  } else {
    print('Your BMI is ${bmi.toStringAsFixed(2)}. You are underweight');
  }
}
