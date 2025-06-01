import 'package:flutter/material.dart';

class TextModel {
  final String title;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;

  const TextModel({
    required this.title,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
  });
}
