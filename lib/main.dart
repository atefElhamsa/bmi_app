import 'package:bmi_app/features/home/data/repo/logic_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_app.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => GlobalData(),
      child: const MyApp(),
    ),
  );
}
