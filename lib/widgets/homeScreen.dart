import 'package:bmi_calculator/constants/app_constants.dart';
import 'package:bmi_calculator/widgets/leftBar.dart';
import 'package:bmi_calculator/widgets/rightBart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController heightVal = new TextEditingController();
  TextEditingController weightVal = new TextEditingController();
  double bmiCal = 0;
  String message = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: accentHexColor, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: heightVal,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentHexColor,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Height",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: accentHexColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: weightVal,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentHexColor,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Weight",
                      hintStyle: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: accentHexColor),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                double height = double.parse(heightVal.text);
                double weight = double.parse(weightVal.text);

                setState(() {
                  bmiCal = weight / (height * height);
                  if (bmiCal > 30) {
                    message = "You are Overweight";
                  } else if (bmiCal >= 18.5 && bmiCal <= 25) {
                    message = "You are Normal";
                  } else {
                    message = "You are Underweight";
                  }
                });
              },
              child: Container(
                child: Text(
                  'Calculate',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: accentHexColor),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              '$bmiCal',
              style: TextStyle(fontSize: 30, color: accentHexColor),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '$message',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: accentHexColor,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            LeftBar(80),
            SizedBox(
              height: 20,
            ),
            LeftBar(45),
            SizedBox(
              height: 20,
            ),
            LeftBar(60),
            SizedBox(height: 40),
            RightBart(80),
            SizedBox(
              height: 20,
            ),
            RightBart(65),
          ],
        ),
      ),
    );
  }
}
