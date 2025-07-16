void main(List<String> args) {
  favoriteLanguage('dart');
  favoriteLanguage('java');
  favoriteLanguage('python');
  favoriteLanguage('javascript');
  favoriteLanguage('Go');
}

void favoriteLanguage(String lang) {
  switch (lang) {
    case 'dart':
      print('you chose dart, fast and modern!');
      break;
    case 'java':
      print('you chose java, fundamental!');
      break;
    case 'python':
      print('you chose python, you will program LLMs in no time!');
      break;
    case 'javascript':
      print('you chose javascript! idk why');
      break;
    default:
      print("that's nice!");
  }
}
