void main(List<String> args) {
  late final bool isTeenager;
  const age = 12;
  if (age >= 13 && age <= 19) {
    isTeenager = true;
  } else if (age < 13) {
    isTeenager = false;
  }
  try {
    isTeenager = false;
    print('isTeenager = $isTeenager');
  } catch (e) {
    print(e);
  }
}

/* late final variable can only be assigned once
try a different approach instead of using try-catch e.g. nullables; */
