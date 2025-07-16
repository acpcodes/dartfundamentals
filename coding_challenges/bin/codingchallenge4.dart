// Build a mini Point-of-Sale system that:
// Uses a List<Map<String, dynamic>> to store items (name, price, quantity).
// Calculates total cost using operators.
// Uses optional member name for discounts.
// Uses a function to print a receipt.
// Uses late for full summary after computation.
// Uses control flow to apply:
// 10% discount if member
// VAT at 12%
// Prints itemized list with total cost.

// Sample output below:
// Welcome back, Arcel!
// Items Purchased:
// - Apple x2 = ₱30
// - Milk x1 = ₱50
// Subtotal: ₱80
// Member Discount: -₱8
// VAT (12%): ₱8.64
// Total Due: ₱80.64

void main(List<String> args) {
  String? memberName = 'Arcel';
  final List<Map<String, dynamic>> items = [
    {'name': 'Apple', 'price': 15, 'quantity': 2},
    {'name': 'Milk', 'price': 50, 'quantity': 1},
  ];
  // double subtotal;
  // double discountAmount;
  // double vatAmount;
  // double total;
  // late String receipt;
  printReceipt(items, memberName: memberName);
}

printReceipt(List<Map<String, dynamic>> items, {String? memberName}) {
  print('Welcome back, ${memberName ?? 'Shopper'}!');
  print('Items Purchased:');
  for (final item in items) {
    final name = item['name'];
    final price = item['price'];
    final qty = item['quantity'];
    final total = price * qty;
    print('- $name x$qty = ₱$total');
  }
  double subtotal = items.fold(0, (sum, item) => sum + (item['price'] * item['quantity']));
  print('Subtotal: ₱${subtotal.toStringAsFixed(0)}');
  double memberDiscount = subtotal * 0.1;
  double vat = (subtotal - memberDiscount) * 0.12;
  double total = (subtotal - memberDiscount) + vat;
  if (memberName != null) {
    print('Member Discount: -₱${memberDiscount.toStringAsFixed(0)}');
  } else {
    print('No Discount!');
  }
  print('VAT (12%):$vat');
  print('Total Due: ₱$total');

  // print(itemsMap);
}
