import 'package:flutter/material.dart';
import 'package:robocoding/OnboardingScreens/weight.dart';

class GoalSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 0.4), // Adjust the height as needed
        child: AppBar(
          title: Text(
            "Goal Settings",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1.0), // Adjust the height as needed
            child: LinearProgressIndicator(
              value: 0.16,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF6154D5)), // Set the color of the progress bar
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildGoalInfo(),
              _buildGoalButtons(),
              _buildContinueButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGoalInfo() {
    return Column(
      children: [
        Text(
          "What's Your Goal",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        Text(
          "Torem ipsum dolor sit amet, consectetur alertyim adipiscing elit.",
          style: TextStyle(
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildGoalButtons() {
    return Column(
      children: [
        _buildGoalButton("Lose Weight", "Images/weightloss.png"),
        SizedBox(height: 12),
        _buildGoalButton("Be Fit", "Images/weightloss.png"),
        SizedBox(height: 12),
        _buildGoalButton("Gain Weight", "Images/weightscales.png"),
      ],
    );
  }

  Widget _buildGoalButton(String text, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            // Handle button tap
          },
          child: Row(
            children: [
              ImageIcon(
                AssetImage(imagePath),
                size: 24,
              ),
              SizedBox(width: 15),
              Text(
                text,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContinueButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Weight()),
            );
          },
          child: Text('Continue'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF6154D5),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
