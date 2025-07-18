void main(List<String> args) {
  print(TeslaCars.values);
  print([...TeslaCars.values]..sort()); //sort by weightInKG;
}

enum TeslaCars implements Comparable<TeslaCars> {
  modelS(weightInKG: 2.1),
  model3(weightInKG: 1.8),
  modelX(weightInKG: 2.4),
  modelY(weightInKG: 2.2);

  final double weightInKG;
  const TeslaCars({required this.weightInKG});

  @override
  int compareTo(TeslaCars other) => weightInKG.compareTo(other.weightInKG);
}


//implement comparison in enumerations