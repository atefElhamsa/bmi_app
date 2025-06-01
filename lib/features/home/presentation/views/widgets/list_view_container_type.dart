import 'package:bmi_app/core/utils/app_colors.dart';
import 'package:bmi_app/features/home/presentation/views/widgets/male_and_female_widget.dart';
import 'package:flutter/material.dart';
import '../../../data/models/container_type_item_model.dart';
import 'container_item_widget.dart';

class ListViewContainerType extends StatefulWidget {
  const ListViewContainerType({super.key});

  @override
  State<ListViewContainerType> createState() => _ListViewContainerTypeState();
}

class _ListViewContainerTypeState extends State<ListViewContainerType> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 70);
        },
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: ContainerItemWidget(
              color:
                  activeIndex == index ? AppColors.pink : AppColors.appbarColor,
              widget: MaleAndFemaleWidget(
                containerTypeItemWidgetModel: itemsType[index],
              ),
            ),
          );
        },
        itemCount: itemsType.length,
      ),
    );
  }
}
