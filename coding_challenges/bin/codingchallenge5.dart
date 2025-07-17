// Build a mini quiz grader system:
// Each student has a name and a list of quiz scores.
// Use a List<Map<String, dynamic>> to store students and their scores.
// Use a function to:
// Calculate average score
// Assign grade:
// A for 90+
// B for 80–89
// C for 70–79
// F below 70
// Use late to store a summary message after grading.
// Optionally include a teacherName for a personalized greeting.
// Example Output:
// Hello, Mr. Cruz!
// Grading 2 students...
// - Ana: Average = 91.0, Grade = A
// - Ben: Average = 76.5, Grade = C
// Grading Complete!
void main(List<String> args) {
  const List<Map<String, dynamic>> gradeList = [
    {'name': 'Ana', 'quiz1': 91.0, 'quiz2': 85.0, 'quiz3': 90.0, 'grade': null},
    {'name': 'Ben', 'quiz1': 78.5, 'quiz2': 83.5, 'quiz3': 75.5, 'grade': null},
    {'name': 'Alice', 'quiz1': 85.5, 'quiz2': 83.0, 'quiz3': 86, 'grade': null},
    {'name': 'Ken', 'quiz1': 65.5, 'quiz2': 72.0, 'quiz3': 70.0, 'grade': null},
    {'name': 'Jill', 'quiz1': 95.5, 'quiz2': 90.7, 'quiz3': 93.15, 'grade': null},
  ];
  late String? teacherName = 'Mr. Cruz';
  callName(teacherName);
  print('Grading ${gradeList.length} students...');
  calculateGrade(gradeList);
  print('Grading Complete!');
}

void callName(teach) {
  print('Hello, ${teach ?? 'Teacher'}!');
}

void calculateGrade(gradeResult) {
  for (final perStudent in gradeResult) {
    final name = perStudent['name'];
    final quiz1 = perStudent['quiz1'];
    final quiz2 = perStudent['quiz2'];
    final quiz3 = perStudent['quiz3'];
    var grade = perStudent['grade'];
    final double totalGrade = (quiz1 + quiz2 + quiz3) / 3;
    if (totalGrade >= 90) {
      grade = 'A';
    } else if (totalGrade >= 80) {
      grade = 'B';
    } else if (totalGrade >= 70) {
      grade = 'C';
    } else {
      grade = 'F';
    }
    print('- $name: Average: ${totalGrade.toStringAsFixed(1)}, Grade = $grade');
  }
}
