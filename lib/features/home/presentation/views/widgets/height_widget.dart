import 'package:bmi_app/features/home/data/repo/logic_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<GlobalData>(context);
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
              title: data.height.toStringAsFixed(1) + AppTexts.cm,
            ),
          ),
          Slider(
            min: 0,
            max: 300,
            value: data.height,
            onChanged: (value) {
              data.updateHeight(value: value);
            },
          ),
        ],
      ),
    );
  }
}
