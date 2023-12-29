import 'package:flutter/material.dart';
import 'FoodPreference2.dart';
import 'SleepCycle.dart';

class FoodPreferences extends StatefulWidget {
  const FoodPreferences({Key? key}) : super(key: key);

  @override
  State<FoodPreferences> createState() => _FoodPreferencesState();
}

class _FoodPreferencesState extends State<FoodPreferences> {
  double buttonWidth = 150.0; // Define buttonWidth
  Color kgColor = Colors.blue; // Define kgColor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
            kToolbarHeight + 0.4), // Adjust the height as needed
        child: AppBar(
          title: Text(
            "Food Preferences",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1.0), // Adjust the height as needed
            child: LinearProgressIndicator(
              value: 0.837,
              valueColor: AlwaysStoppedAnimation<Color>(
                  Color(0xFF6154D5)), // Set the color of the progress bar
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(40),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Select Your Preferences",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Text(
                          "Torem ipsum dolor sit amet, consectetur alertyim adipiscing elit.",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff6a678b),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // Additional container below existing content
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCircularContainer(
                      Color(0xFFEFEEFB), AssetImage('Images/fruit.png')),
                  _buildCircularContainer(
                      Color(0xFFEFEEFB), AssetImage('Images/vegetable.png')),
                  _buildCircularContainer(
                      Color(0xFFEFEEFB), AssetImage('Images/dairy.png')),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              // Additional container below existing content
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCircularContainer(
                      Color(0xFFEFEEFB), AssetImage('Images/dairy.png')),
                  _buildCircularContainer(
                      Color(0xFFEFEEFB), AssetImage('Images/fruit.png')),
                  _buildCircularContainer(
                      Color(0xFFEFEEFB), AssetImage('Images/vegetable.png')),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              // Additional container below existing content
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCircularContainer(
                      Color(0xFFEFEEFB), AssetImage('Images/vegetable.png')),
                  _buildCircularContainer(
                      Color(0xFFEFEEFB), AssetImage('Images/dairy.png')),
                  _buildCircularContainer(
                      Color(0xFFEFEEFB), AssetImage('Images/fruit.png')),
                ],
              ),
            ),
            SizedBox(height: 200),
            Row(
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
                      MaterialPageRoute(builder: (context) => SleepCycle()),
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
                      MaterialPageRoute(builder: (context) => FoodPreferencee()),
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
      ),
    );
  }

  Widget _buildCircularContainer(
      Color color, ImageProvider<Object> imageProvider) {
    return ClipOval(
      child: Container(
        width: 100,
        height: 100,
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
             backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            child: Center(
              //heightFactor: 20,
              child: Image(
                image: imageProvider,
                width: 40,
                height: 40,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
