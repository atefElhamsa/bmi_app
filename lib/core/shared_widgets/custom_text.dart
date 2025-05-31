import 'package:bmi_app/features/home/data/models/text_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.textModel});
  final TextModel textModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      textModel.title,
      style: GoogleFonts.roboto(
        color: textModel.color ?? AppColors.white,
        fontWeight: textModel.fontWeight ?? FontWeight.w700,
        fontSize: textModel.fontSize ?? 35.sp,
      ),
    );
  }
}
