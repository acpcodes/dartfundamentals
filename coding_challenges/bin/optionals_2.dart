// Create a function that greets a user:
// If nickname is provided, use it.
// If not, check if fullName exists.
// If both are missing, greet with "Guest".
void main(List<String> args) {
  greetUser(nickName: 'Ace', fullName: 'Carlo Dela Cruz');
  greetUser(nickName: null, fullName: 'Carlo Dela Cruz');
  greetUser(nickName: null, fullName: null);
}

void greetUser({String? nickName, String? fullName}) {
  final defaultValue = 'Guest';
  print('Hello, ${nickName ?? fullName ?? defaultValue}!');
}
