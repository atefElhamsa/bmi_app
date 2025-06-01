import 'package:bmi_app/features/home/data/models/container_type_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../data/models/text_model.dart';

class MaleAndFemaleWidget extends StatelessWidget {
  const MaleAndFemaleWidget({
    super.key,
    required this.containerTypeItemWidgetModel,
  });
  final ContainerTypeItemModel containerTypeItemWidgetModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          containerTypeItemWidgetModel.iconData,
          color: AppColors.white,
          size: 80.h,
        ),
        CustomText(
          textModel: TextModel(
            title: containerTypeItemWidgetModel.text,
            fontSize: 30.sp,
          ),
        ),
      ],
    );
  }
}
