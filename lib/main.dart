import 'package:bmi_calculator/widgets/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMI_Calc());
}

class BMI_Calc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
