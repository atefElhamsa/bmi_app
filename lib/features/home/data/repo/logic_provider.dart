import 'dart:math';

import 'package:bmi_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class GlobalData extends ChangeNotifier {
  int activeIndex = 0;
  double height = 0;
  double weight = 0;
  double age = 0;
  double bmiCalc = 0;
  Color color = AppColors.normalColor;

  void updateActiveIndex({required int index}) {
    if (activeIndex != index) {
      activeIndex = index;
    }
    notifyListeners();
  }

  void updateHeight({required double value}) {
    height = value;
    notifyListeners();
  }

  void incrementWeight() {
    weight += 1;
    notifyListeners();
  }

  void decrementWeight() {
    if (weight > 1) {
      weight -= 1;
    }
    notifyListeners();
  }

  void incrementAge() {
    age += 1;
    notifyListeners();
  }

  void decrementAge() {
    if (age > 1) {
      age -= 1;
    }
    notifyListeners();
  }

  void bmiResult() {
    bmiCalc = weight / pow(height.round() / 100, 2);
    notifyListeners();
  }

  void updateColor({required Color newColor}) {
    color = newColor;
    notifyListeners();
  }
}
