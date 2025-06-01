import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../../home/data/models/age_and_weight_item_model.dart';
import '../../../../home/data/models/text_model.dart';

class ContainerResult extends StatelessWidget {
  ContainerResult({super.key,});
  double bmiCalc = 0;
  Color color = AppColors.normalColor;

  String result({required Color color}) {
    bmiCalc = weight / pow(height.round() / 100, 2);
    if (bmiCalc < 15) {
      color = AppColors.orange;
      return AppTexts.verySeverelyUnderweight;
    } else if (bmiCalc >= 15 && bmiCalc < 16) {
      color = AppColors.orange;
      return AppTexts.severelyUnderweight;
    } else if (bmiCalc >= 16 && bmiCalc < 18.5) {
      color = AppColors.orange;
      return AppTexts.underweight;
    } else if (bmiCalc >= 18.5 && bmiCalc < 25) {
      color = AppColors.normalColor;
      return AppTexts.normal;
    } else if (bmiCalc >= 25 && bmiCalc < 30) {
      color = AppColors.orange;
      return AppTexts.overweight;
    } else if (bmiCalc >= 30 && bmiCalc < 35) {
      color = AppColors.red;
      return AppTexts.moderatelyObese;
    } else if (bmiCalc >= 35 && bmiCalc < 40) {
      color = AppColors.red;
      return AppTexts.severelyObese;
    } else {
      color = AppColors.red;
      return AppTexts.verySeverelyObese;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 540,
      width: double.infinity,
      padding: EdgeInsets.only(top: 50.h),
      decoration: BoxDecoration(
        color: AppColors.appbarColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            textModel: TextModel(title: result(color: color), color: color),
          ),
          SizedBox(height: 100.h),
          CustomText(textModel: TextModel(title: "$bmiCalc", fontSize: 80.sp)),
        ],
      ),
    );
  }
}
