import 'package:flutter/material.dart';
import 'height_widget.dart';
import 'list_view_age_and_weight.dart';
import 'list_view_container_type.dart';

class TheThreeWidgets extends StatelessWidget {
  TheThreeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SizedBox(
        child: Column(
          spacing: 40,
          children: [
            const ListViewContainerType(),
            HeightWidget(),
            ListViewAgeAndWeight(),
          ],
        ),
      ),
    );
  }
}
