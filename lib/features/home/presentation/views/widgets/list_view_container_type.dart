import 'package:bmi_app/core/utils/app_colors.dart';
import 'package:bmi_app/features/home/data/repo/logic_provider.dart';
import 'package:bmi_app/features/home/presentation/views/widgets/male_and_female_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../data/models/container_type_item_model.dart';
import 'container_item_widget.dart';

class ListViewContainerType extends StatefulWidget {
  const ListViewContainerType({super.key});

  @override
  State<ListViewContainerType> createState() => _ListViewContainerTypeState();
}

class _ListViewContainerTypeState extends State<ListViewContainerType> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<GlobalData>(context);
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
              data.updateActiveIndex(index: index);
            },
            child: ContainerItemWidget(
              color:
                  data.activeIndex == index
                      ? AppColors.pink
                      : AppColors.appbarColor,
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
