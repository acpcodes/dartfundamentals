void main(List<String> args) {
  int? age = 20;
  age = null;
  print(age);
  if (age == null) {
    print('age is null');
  } else {
    print('age is not null');
  }
}
//you can ALWAYS compare a nullable(?) value to null.