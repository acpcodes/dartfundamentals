// Create a function isEven(int number) that returns true if the number is even, false otherwise.
// // Then loop through a list of numbers and print if each is even or odd.

void main(List<String> args) {
  const numberList = [2, 7, 10, 15];
  for (int i in numberList) {
    if (isEven(i)) {
      print('$i is even.');
    } else {
      print('$i is odd.');
    }
  }
}

bool isEven(int number) => number % 2 == 0;
