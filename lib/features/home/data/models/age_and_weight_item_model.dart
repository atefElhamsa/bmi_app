import '../../../../core/utils/app_texts.dart';

class AgeAndWeightItemModel {
  final String title;
  int ageOrWeight;

  AgeAndWeightItemModel({required this.title, required this.ageOrWeight});
}

final List itemsInfo = [AppTexts.weight, AppTexts.age];
double height = 0;
int weight = 0;
