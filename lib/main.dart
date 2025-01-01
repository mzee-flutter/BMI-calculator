import 'package:bmi_calculator/view/BMICalculator_screen.dart';
import 'package:bmi_calculator/view_model/BMICalculator_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => BMICalculatorViewModel(),
      child: const BMICalculatorApp(),
    ),
  );
}

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMICalculatorScreen(),
    );
  }
}
