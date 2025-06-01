import 'package:bmi_app/core/utils/app_colors.dart';
import 'package:bmi_app/features/result/presentation/views/widgets/result_body.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(child: ResultBody()),
    );
  }
}
