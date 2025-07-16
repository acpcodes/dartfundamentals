void main(List<String> args) {
  int correct = 18;
  int wrong = 2;
  int totalItems = 20;
  final finalScore = ((correct * 4) - wrong);
  final perfectScore = totalItems * 4;
  final percentage = ((finalScore / perfectScore) * 100);
  print('Score: $finalScore');
  print('Percentage: $percentage%');
}
