import 'package:bmi_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerItemWidget extends StatelessWidget {
  const ContainerItemWidget({
    super.key,
    required this.widget,
    this.color,
  });
  final Widget widget;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: 136.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color ?? AppColors.appbarColor,
      ),
      child: widget,
    );
  }
}
