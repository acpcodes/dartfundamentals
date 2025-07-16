void main(List<String> args) {
  late Map<String, Object?> myInfo = {
    'name': 'Arcel Carlo Parrilla',
    'nickname': 'AC',
    'age': 28,
    'subjects': {'Math': 89, 'English': 92, 'Science': 85},
  };
  print('Hello, ${myInfo['nickname'] ?? myInfo['name']}!');
  print('Student: ${myInfo['name']}');
  print('Age: ${myInfo['age']}');
  print('Subjects:');

  print('Student: ${myInfo['subjects']}');
  {
    print('- ${myInfo['subjects']}');
    for (final lookForSubj in myInfo.entries) {
      if (lookForSubj.key == 'subjects') {
        final subjects = lookForSubj.value as Map<String, int>;
        var total = 0;
        {
          for (final entry in subjects.entries) {
            print('- ${entry.key}: ${entry.value}');

            total += entry.value;
          }
          print('${calculateAve(total, subjects.entries.length)}');
        }
      }
    }
  }
}

calculateAve(total, subjectList) {
  double ave = total / subjectList;
  if (ave >= 75) {
    print('Average ${ave.toStringAsFixed(2)}');
    return ('Passed');
  } else {
    print('Average ${ave.toStringAsFixed(2)}');
    return ('Failed');
  }
}

//lots more to clean-up, but hey it works.
