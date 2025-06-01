import 'package:flutter/material.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_texts.dart';
import '../../../data/models/text_model.dart';

class HeightWidget extends StatefulWidget {
  const HeightWidget({super.key});

  @override
  State<HeightWidget> createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {
  double height = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.appbarColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CustomText(textModel: TextModel(title: AppTexts.height)),
          CustomText(
            textModel: TextModel(
              title: height.toStringAsFixed(1) + AppTexts.cm,
            ),
          ),
          Slider(
            min: 0,
            max: 300,
            value: height,
            onChanged: (value) {
              setState(() {
                height = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
