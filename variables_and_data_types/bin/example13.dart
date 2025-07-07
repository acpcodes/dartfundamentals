void main(List<String> args) {
  const String yourName = 'Foo Bar';
  final String hisName =
      yourName; //you dont need to manually infer types in dart, for the most part.
  print(yourName);
  print(hisName);
}
///specifying data types
///data type specification is something you wanna do codebase wide. type-annotation - analysis_options.yaml always_specify_types;