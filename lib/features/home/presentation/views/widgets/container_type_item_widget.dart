import 'package:bmi_app/features/home/data/models/container_type_item_widget_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../data/models/text_model.dart';

class ContainerTypeItemWidget extends StatefulWidget {
  const ContainerTypeItemWidget({
    super.key,
    required this.containerTypeItemWidgetModel,
  });
  final ContainerTypeItemWidgetModel containerTypeItemWidgetModel;

  @override
  State<ContainerTypeItemWidget> createState() =>
      _ContainerTypeItemWidgetState();
}

class _ContainerTypeItemWidgetState extends State<ContainerTypeItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: 136.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color:
            widget.containerTypeItemWidgetModel.isSelected
                ? Colors.pink
                : AppColors.appbarColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.containerTypeItemWidgetModel.iconData,
            color: AppColors.white,
            size: 80.h,
          ),
          CustomText(
            textModel: TextModel(
              title: widget.containerTypeItemWidgetModel.text,
              fontSize: 30.sp,
            ),
          ),
        ],
      ),
    );
  }
}
