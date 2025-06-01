import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_colors.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({super.key, required this.iconData, this.onPressed});
  final IconData iconData;
  final void Function()? onPressed;

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: widget.onPressed,
      icon: Icon(widget.iconData, size: 40.h, color: AppColors.white),
    );
  }
}
