import 'package:bmi_app/features/home/presentation/views/widgets/calculate_container.dart';
import 'package:bmi_app/features/home/presentation/views/widgets/the_three_widgets.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TheThreeWidgets(),
        const Spacer(),
        CalculateContainer(),
      ],
    );
  }
}
