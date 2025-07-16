// You are given a list of daily temperatures. Print the highest, lowest, and average temperature.
//const List<double> temps = [30.5, 32.0, 29.8, 31.2, 33.1];
void main(List<String> args) {
  calculateTemp();
}

void calculateTemp() {
  const List<double> temps = [30.5, 32.0, 29.8, 31.2, 33.1];
  double highest = temps[0];
  double lowest = temps[0];
  double sum = 0;
  for (final index in temps) {
    sum += index;
    if (index > highest) {
      highest = index;
    }
    if (index < lowest) {
      lowest = index;
    }
  }
  double ave = sum / temps.length;
  print('Highest: ${highest.toStringAsFixed(1)}°C');
  print('Lowest ${lowest.toStringAsFixed(1)}');
  print('Average: ${ave.toStringAsFixed(2)}°C');
}
