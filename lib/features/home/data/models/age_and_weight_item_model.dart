import '../../../../core/utils/app_texts.dart';

class AgeAndWeightItemModel {
  final String title;
  int ageOrWeight;

  AgeAndWeightItemModel({required this.title, required this.ageOrWeight});
}

int weight = 0;
int age = 0;

final List<AgeAndWeightItemModel> itemsInfo = [
  AgeAndWeightItemModel(title: AppTexts.weight, ageOrWeight: weight),
  AgeAndWeightItemModel(title: AppTexts.age, ageOrWeight: age),
];
