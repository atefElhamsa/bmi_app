import 'package:bmi_app/features/home/data/repo/logic_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_texts.dart';

String result({required BuildContext context}) {
  final data = Provider.of<GlobalData>(context);
  if (data.bmiCalc < 15) {
    data.color = AppColors.orange;
    return AppTexts.verySeverelyUnderweight;
  } else if (data.bmiCalc >= 15 && data.bmiCalc < 16) {
    data.color = AppColors.orange;
    return AppTexts.severelyUnderweight;
  } else if (data.bmiCalc >= 16 && data.bmiCalc < 18.5) {
    data.color = AppColors.orange;
    return AppTexts.underweight;
  } else if (data.bmiCalc >= 18.5 && data.bmiCalc < 25) {
    data.color = AppColors.normalColor;
    return AppTexts.normal;
  } else if (data.bmiCalc >= 25 && data.bmiCalc < 30) {
    data.color = AppColors.orange;
    return AppTexts.overweight;
  } else if (data.bmiCalc >= 30 && data.bmiCalc < 35) {
    data.color = AppColors.red;
    return AppTexts.moderatelyObese;
  } else if (data.bmiCalc >= 35 && data.bmiCalc < 40) {
    data.color = AppColors.red;
    return AppTexts.severelyObese;
  } else {
    data.color = AppColors.red;
    return AppTexts.verySeverelyObese;
  }
}
