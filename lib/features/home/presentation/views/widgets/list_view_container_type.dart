import 'package:flutter/material.dart';

import '../../../data/models/container_type_item_widget_model.dart';
import 'container_type_item_widget.dart';

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
            child: ContainerTypeItemWidget(
              containerTypeItemWidgetModel: ContainerTypeItemWidgetModel(
                text: texts[index],
                iconData: icons[index],
                isSelected: activeIndex == index,
              ),
            ),
          );
        },
        itemCount: texts.length,
      ),
    );
  }
}
