import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../data/models/text_model.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appbarColor,
      centerTitle: true,
      toolbarHeight: 80,
      title: const CustomText(
        textModel: TextModel(title: AppTexts.bmiCalculator),
      ),
    );
  }
}
