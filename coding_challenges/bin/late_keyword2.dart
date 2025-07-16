// Initialize a user profile only when needed. Delay initialization of the full address until user logs in.
void main(List<String> args) {
  print('User Logged in');
  callAddress();
}

void callAddress() {
  late final fullAddress = ['Address:', '123 Ayala Ave, Makati'];
  final joined = fullAddress.fold<String>('', (result, str) {
    if (result.isEmpty) {
      return str;
    } else {
      return '$result, $str';
    }
  });
  //'$result ${str.toString()}');
  print(joined);
}
