import 'package:bmi_app/features/home/data/models/age_and_weight_item_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../data/models/text_model.dart';
import 'icon_widget.dart';

class AgeAndWeightItemWidget extends StatefulWidget {
  const AgeAndWeightItemWidget({
    super.key,
    required this.ageAndWeightItemModel,
  });
  final AgeAndWeightItemModel ageAndWeightItemModel;

  @override
  State<AgeAndWeightItemWidget> createState() => _AgeAndWeightItemWidgetState();
}

class _AgeAndWeightItemWidgetState extends State<AgeAndWeightItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          textModel: TextModel(title: widget.ageAndWeightItemModel.title),
        ),
        CustomText(
          textModel: TextModel(
            title: widget.ageAndWeightItemModel.ageOrWeight.toString(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconWidget(
              iconData: Icons.remove_circle,
              onPressed: () {
                if (widget.ageAndWeightItemModel.ageOrWeight > 1) {
                  widget.ageAndWeightItemModel.ageOrWeight -= 1;
                  setState(() {});
                }
              },
            ),
            IconWidget(
              iconData: Icons.add_circle,
              onPressed: () {
                widget.ageAndWeightItemModel.ageOrWeight += 1;
                setState(() {});
              },
            ),
          ],
        ),
      ],
    );
  }
}
