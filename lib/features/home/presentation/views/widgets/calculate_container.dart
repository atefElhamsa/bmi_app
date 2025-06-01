import 'package:bmi_app/features/result/presentation/views/result_screen.dart';
import 'package:flutter/material.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../data/models/text_model.dart';

class CalculateContainer extends StatelessWidget {
  const CalculateContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ResultScreen(),
          ),
        );
      },
      child: Container(
        height: 80,
        width: double.infinity,
        color: AppColors.containerColorRed,
        child: const Center(
          child: CustomText(textModel: TextModel(title: AppTexts.calculate)),
        ),
      ),
    );
  }
}
