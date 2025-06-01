import 'package:bmi_app/core/utils/app_colors.dart';
import 'package:bmi_app/features/home/presentation/views/widgets/app_bar_widget.dart';
import 'package:bmi_app/features/home/presentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBarWidget(),
      ),
      body: HomeBody(),
    );
  }
}
