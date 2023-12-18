import 'package:flutter/material.dart';
import 'package:scale_ruler_view/scale_ruler_view.dart';

import 'Goal.dart';
import 'Height.dart';

class Weight extends StatefulWidget {
  const Weight({Key? key}) : super(key: key);

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  @override
  Widget build(BuildContext context) {
    Color kgColor = Color(0xFF6154D5);
    Color lbsColor = Color(0xFF6B678B);
    Size size = MediaQuery.of(context).size;
    double buttonWidth = 130.0; // Set a specific width for the buttons

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          title: Text(
            "Weight",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "How much do you Weight",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
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
                      "KG",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: kgColor, // Custom color for KG
                      ),
                    ),
                    SizedBox(width: 16),
                    Text(
                      "LBS",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: lbsColor, // Custom color for LBS
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15,),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GoalSetting()));
                  },
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: kgColor, // Change the text color to blue
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kgColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the value as needed
                    ),
                    minimumSize: Size(buttonWidth, 40), // Set the width
                  ),
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Height()));

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
      ),
    );
  }
}