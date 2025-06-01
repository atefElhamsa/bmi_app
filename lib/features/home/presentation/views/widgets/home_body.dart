import 'package:bmi_app/features/home/presentation/views/widgets/height_widget.dart';
import 'package:bmi_app/features/home/presentation/views/widgets/list_view_age_and_weight.dart';
import 'package:bmi_app/features/home/presentation/views/widgets/list_view_container_type.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        spacing: 50,
        children: [
          ListViewContainerType(),
          HeightWidget(),
          ListViewAgeAndWeight(),
        ],
      ),
    );
  }
}
