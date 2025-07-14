import 'dart:math';

void main() {
  checkBMI(weight: 62.5, height: 1.71);
}

void checkBMI({required double weight, required double height}) {
  double bmi = weight / pow(height, 2).toDouble();
  print('Your BMI is ${bmi.toStringAsFixed(2)}');

  if (bmi >= 30.0) {
    print('You are obese!');
  } else if (bmi >= 25.0) {
    print('You are overweight!');
  } else if (bmi >= 18.5) {
    print('You are at the normal range, keep it up!');
  } else {
    print('You are underweight!');
  }
}
