import 'package:flutter/material.dart';
import 'package:robocoding/OnboardingScreens/weight.dart';
import 'package:scale_ruler_view/scale_ruler_view.dart';

import 'Goal.dart';
import 'SleepCycle.dart';

class Height extends StatefulWidget {
  const Height({Key? key}) : super(key: key);

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  @override
  Widget build(BuildContext context) {
    Color cmColor = Color(0xFF6154D5);
    Color inchesColor = Color(0xFF6B678B);
    Size size = MediaQuery.of(context).size;
    double buttonWidth = 130.0;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          title: Text(
            "Height",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "How tall are you",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Torem ipsum dolor sit amet, consectetur alertyim adipiscing elit.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black, // Custom text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "CM",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: cmColor, // Custom color for CM
                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        "INCHES",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: inchesColor, // Custom color for INCHES
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  RulerWidget(
                    size: Size(size.width, size.height / 6),
                    viewStyle: ViewStyle.valueUpScaleDownStyle,
                    showHighScaleLine: true,
                    showHighScaleNum: true,
                    showLowScaleLine: true,
                    showLowScaleNum: true,
                    showMiddleScaleLine: true,
                    showMiddleScaleNum: true,
                    showLine: true,
                    textSize: 0,
                    zoomTextSize: 23,
                    startValue: 3,
                    endValue: 200,
                    initValue: 15,
                    space: 5,
                    scaleValueSpace: 10,
                    lowScaleLineColor: Colors.black54,
                    middleScaleLineColor: Colors.black87,
                    highScaleLineColor: Colors.black,
                    lineColor: Colors.white,
                    lowScaleLineHigh: 18,
                    middleScaleLineHigh: 30,
                    highScaleLineHigh: 50,
                    middleScaleLineStrokeWidth: 2,
                    lowScaleLineStrokeWidth: 2,
                    highScaleLineStrokeWidth: 2,
                    lineStrokeWidth: 2,
                    textColor: Colors.black54,
                    middleSpaceValueSpace: 5,
                    highSpaceValeSpace: 10,
                    callback: (int value) {
                      print(value);
                    },
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Change the color to white
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Adjust the value as needed
                  ),
                  minimumSize: Size(buttonWidth, 40), // Set the width
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Weight(),
                    ),
                  );
                },
                child: Text(
                  "Back",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: cmColor, // Change the text color to blue
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: cmColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Adjust the value as needed
                  ),
                  minimumSize: Size(buttonWidth, 40), // Set the width
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SleepCycle(),
                    ),
                  );
                },
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
