void main(List<String> args) {
  String? userName = 'Carla';
  const List<Map<String, dynamic>> expenseList = [
    {'item': 'Food', 'cost': 400},
    {'item': 'Rent', 'cost': 500},
    {'item': 'Utilities', 'cost': 600},
    {'item': 'Transportation', 'cost': 500},
  ];

  //greeting
  greetUser(userName);
  print('Expense Summary:');
  late String summary = weeklyExpense(expenseList);
  print(summary);
}

void greetUser(String? name) {
  print('Hello, ${name ?? 'User'}!');
}

String weeklyExpense(List<Map<String, dynamic>> expenses) {
  String compute = '';
  double totalCost = 0;
  double weeklyBudget = 1500;
  for (final expense in expenses) {
    final item = expense['item'];
    final cost = expense['cost'];
    compute += '- $item ₱${cost.toStringAsFixed(1)}\n';
    totalCost += cost;
  }
  compute += 'Total: ₱${totalCost.toStringAsFixed(1)}\n';
  if (totalCost >= weeklyBudget) {
    compute +=
        'Warning: Budget limit for this week! You spent ₱$totalCost\nYour weekly budget is just ₱$weeklyBudget';
  }

  return (compute);
}
