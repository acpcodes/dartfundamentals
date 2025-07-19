void main(List<String> args) {
  const List<Map<String, dynamic>> taskList = [
    {'title': 'Grocery', 'description': 'Buy rice.', 'done': true},
    {'title': 'Wash car', 'description': null, 'done': false},
    {'title': 'Study', 'description': 'Review dart concepts.', 'done': true},
  ];
  print('Your Tasks Today:');
  print(printTasks(taskList));
}

String printTasks(taskList) {
  var record = '';
  int countDone = 0;
  for (final task in taskList) {
    final title = task['title'];
    final description = task['description'];
    final done = task['done'];
    // print('$title <> $description <> $done');
    if (done != false) {
      record += '- [✓]';
      countDone += 1;
    } else {
      record += '- [ ]';
    }
    record += '$title: ${description ?? 'No description provided.'}\n';
  }
  record += 'Tasks completed: $countDone out of ${taskList.length}';
  return (record);
}
