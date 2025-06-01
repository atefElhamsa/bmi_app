import 'package:bmi_app/core/shared_widgets/custom_text.dart';
import 'package:bmi_app/core/utils/app_texts.dart';
import 'package:bmi_app/features/home/data/models/text_model.dart';
import 'package:bmi_app/features/home/presentation/views/widgets/icon_widget.dart';
import 'package:bmi_app/features/result/presentation/views/widgets/container_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultBody extends StatelessWidget {
  const ResultBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(textModel: TextModel(title: AppTexts.yourResult)),
          IconWidget(
            iconData: Icons.arrow_back_ios,
            onPressed: () => Navigator.pop(context),
          ),
          SizedBox(height: 35.h),
          ContainerResult(),
        ],
      ),
    );
  }
}
