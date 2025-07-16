// You are given a list of daily temperatures. Print the highest, lowest, and average temperature.
void main(List<String> args) {
  //const List<double> temps = [30.5, 32.0, 29.8, 31.2, 33.1];
  calculateTemp();
}

void calculateTemp() {
  const List<double> temps = [30.5, 32.0, 29.8, 31.2, 33.1];
  late double sum = 0;
  double highest = 0;
  double lowest = 99;
  double currentVal;
  for (final index in temps) {
    currentVal = index;
    if (currentVal > highest) {
      highest = currentVal;
    }
    if (currentVal < lowest) {
      lowest = currentVal;
    }
  }
  for (final add in temps) {
    sum += add;
  }
  late double ave = sum / 5;
  print('Highest: $highest°C');
  print('Lowest: $lowest°C');
  print('Average: ${ave.toStringAsFixed(2)}°C');
}
