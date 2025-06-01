import 'package:bmi_app/core/utils/app_colors.dart';
import 'package:bmi_app/core/utils/app_texts.dart';
import 'package:flutter/material.dart';

class ContainerTypeItemModel {
  final String text;
  final IconData iconData;
  final Color? color;
  bool isSelected;

  ContainerTypeItemModel({
    required this.text,
    required this.iconData,
    this.color = AppColors.appbarColor,
    this.isSelected = false,
  });
}

final List<ContainerTypeItemModel> itemsType = [
  ContainerTypeItemModel(text: AppTexts.female, iconData: Icons.female),
  ContainerTypeItemModel(text: AppTexts.male, iconData: Icons.male),
];
