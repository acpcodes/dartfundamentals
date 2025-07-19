void main(List<String> args) {
  print('Mood tracker summary:');
  const List<Map<String, dynamic>> moodList = [
    {'day': 'Monday', 'mood': Mood.happy},
    {'day': 'Tuesday', 'mood': Mood.sad},
    {'day': 'Wednesday', 'mood': Mood.productive},
    {'day': 'Thursday', 'mood': Mood.productive},
    {'day': 'Friday', 'mood': Mood.tired},
    {'day': 'Saturday', 'mood': Mood.happy},
    {'day': 'Sunday', 'mood': Mood.productive},
  ];
  final moodTrack = printMood(moodList);
  print(moodTrack);
}

String printMood(List<Map<String, dynamic>> moodList) {
  String record = '';
  late String finalSummary;
  final Map<Mood, int> moodCounts = {Mood.happy: 0, Mood.sad: 0, Mood.productive: 0, Mood.tired: 0};
  Mood? mostFrequentMood;
  int maxCount = 0;
  for (final dayMood in moodList) {
    // final day = dayMood['day'];
    // final mood = dayMood['mood'];
    final mood = dayMood['mood'] as Mood;
    moodCounts[mood] = (moodCounts[mood] ?? 0) + 1;
  }

  for (final entry in moodCounts.entries) {
    if (entry.value > maxCount) {
      maxCount = entry.value;
      mostFrequentMood = entry.key;
    }
  }

  for (final entry in moodCounts.entries) {
    record += '- ${entry.key.name}: ${entry.value}\n';
  }
  record += 'Most common mood this week: ${mostFrequentMood?.name}';
  return (record);
}

enum Mood { happy, sad, productive, tired }
