import 'package:bmi_app/core/utils/app_texts.dart';
import 'package:bmi_app/features/home/data/models/age_and_weight_item_model.dart';
import 'package:bmi_app/features/home/presentation/views/widgets/age_and_weight_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/repo/logic_provider.dart';
import 'container_item_widget.dart';

class ListViewAgeAndWeight extends StatefulWidget {
  const ListViewAgeAndWeight({super.key});

  @override
  State<ListViewAgeAndWeight> createState() => _ListViewAgeAndWeightState();
}

class _ListViewAgeAndWeightState extends State<ListViewAgeAndWeight> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<GlobalData>(context);
    final List<AgeAndWeightItemModel> itemsInfo = [
      AgeAndWeightItemModel(
        title: AppTexts.weight,
        ageOrWeight: data.weight,
        onPressedAdd: data.incrementWeight,
        onPressedRemove: data.decrementWeight,
      ),
      AgeAndWeightItemModel(
        title: AppTexts.age,
        ageOrWeight: data.age,
        onPressedAdd: data.incrementAge,
        onPressedRemove: data.decrementAge,
      ),
    ];
    return SizedBox(
      height: 170,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 70);
        },
        itemBuilder: (context, index) {
          return ContainerItemWidget(
            widget: AgeAndWeightItemWidget(
              ageAndWeightItemModel: itemsInfo[index],
            ),
          );
        },
        itemCount: itemsInfo.length,
      ),
    );
  }
}
