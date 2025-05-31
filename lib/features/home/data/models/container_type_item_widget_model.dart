import 'package:bmi_app/core/utils/app_texts.dart';
import 'package:flutter/material.dart';

class ContainerTypeItemWidgetModel {
  final String text;
  final IconData iconData;
  bool isSelected;

  ContainerTypeItemWidgetModel({
    required this.text,
    required this.iconData,
    this.isSelected = false,
  });
}

final List<String> texts = [AppTexts.female, AppTexts.male];
final List<IconData> icons = [Icons.female, Icons.male];
