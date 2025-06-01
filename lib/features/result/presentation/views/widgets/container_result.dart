import 'package:bmi_app/features/home/data/repo/logic_provider.dart';
import 'package:bmi_app/features/result/data/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../home/data/models/text_model.dart';

class ContainerResult extends StatefulWidget {
  const ContainerResult({super.key});

  @override
  State<ContainerResult> createState() => _ContainerResultState();
}

class _ContainerResultState extends State<ContainerResult> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<GlobalData>(context);
    return Container(
      height: 540,
      width: double.infinity,
      padding: EdgeInsets.only(top: 50.h),
      decoration: BoxDecoration(
        color: AppColors.appbarColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            textModel: TextModel(
              title: result(context: context),
              color: data.color,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 100.h),
          CustomText(
            textModel: TextModel(
              title: data.bmiCalc.toStringAsFixed(2),
              fontSize: 80.sp,
            ),
          ),
        ],
      ),
    );
  }
}
