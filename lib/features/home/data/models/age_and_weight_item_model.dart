class AgeAndWeightItemModel {
  final String title;
  double ageOrWeight;
  void Function() onPressedAdd;
  void Function() onPressedRemove;

  AgeAndWeightItemModel({
    required this.title,
    required this.ageOrWeight,
    required this.onPressedAdd,
    required this.onPressedRemove,
  });
}
