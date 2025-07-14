void main(List<String> args) {
  const yourName = 'Foo';
  const myName = 'Bar';

  if (yourName == myName) {
    print('We have the same name');
  } else if (yourName == 'Foo') {
    print('Hello, Foo!');
  } else if (myName == 'Bar' && yourName == 'Foo') {
    /*this line of code wouldnt execute as the previous statement has already been evaluated, and the whole ifelse block would finish.*/
    print('Hello Foo, my name is Bar');
  } else {
    print('Nope');
  }
}


// if statement - evaluates to boolean.