import 'package:flutter/material.dart';

import '../ChatNotification/Notificationn.dart';
import '../Dashboard/Dashboard.dart';
import 'FoodPreferences.dart';

class FoodPreferencee extends StatefulWidget {
  const FoodPreferencee({Key? key}) : super(key: key);

  @override
  State<FoodPreferencee> createState() => _FoodPreferenceeState();
}

class _FoodPreferenceeState extends State<FoodPreferencee> {
  Color kgColor = Colors.blue; // Define kgColor
  double buttonWidth = 120.0; // Define buttonWidth

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          title: Text(
            "Food Preferences",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(40),
              decoration: BoxDecoration(),
              child: Column(
                children: [
                  Text(
                    "Select Your Preferences",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6a678b),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(40),
              decoration: BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownQuestion(
                    question: "What’s your preferred exercise type?",
                  ),
                  DropdownQuestion(
                    question: "How often do you plan to exercise per week",
                  ),
                  DropdownQuestion(
                    question: "How experienced are you in fitness?",
                  ),
                ],
              ),
            ),
            SizedBox(height: 200),
            Container(
              margin: EdgeInsets.all(40),
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: Size(buttonWidth, 40),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FoodPreferences()),
                      );
                    },
                    child: Text(
                      "Back",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: kgColor,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kgColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: Size(buttonWidth, 40),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dashboard()),
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
            ),
          ],
        ),
      ),
    );
  }
}

class DropdownQuestion extends StatefulWidget {
  final String question;

  const DropdownQuestion({Key? key, required this.question}) : super(key: key);

  @override
  _DropdownQuestionState createState() => _DropdownQuestionState();
}

class _DropdownQuestionState extends State<DropdownQuestion> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.question,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        Container(
          width: screenWidth * 0.8, // Adjust the factor based on your preference
          child: DropdownButton<String>(
            value: selectedValue,
            onChanged: (newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
            items: ["Option 1", "Option 2", "Option 3"]
                .map((option) => DropdownMenuItem(
              value: option,
              child: Text(option),
            ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
