void main(List<String> args) {
  (calculateBMI());
}

calculateBMI({double weightKG = 60, double heightMeters = 1.63}) {
  double result = weightKG / (heightMeters * heightMeters);
  print('Your BMI is ${result.toStringAsFixed(2)}');
}

//program to calculate BMI
