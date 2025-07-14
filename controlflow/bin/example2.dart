void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];
  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }
  print('__________');
  for (var j = names.length - 1; j >= 0; j--) {
    print(names[j]);
  }
  print('__________');
  for (var k = 0; k < names.length; k += 2) {
    print(names[k]);
  }
  print('__________');
}

//for loops are rarely used these days.
//initialization, test condition, increment/decrement.
