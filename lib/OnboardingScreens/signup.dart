import 'package:flutter/material.dart';
import 'Goal.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            SizedBox(height: 25),
            _buildTextField('Enter your Full Name', 'FULL NAME'),
            SizedBox(height: 15),
            _buildTextField('Email', 'Email'),
            SizedBox(height: 15),
            _buildTextField('Password', 'Password', obscureText: true),
            SizedBox(height: 20),
            _buildTermsAndPrivacyText(),
            SizedBox(height: 20),
            _buildSignupButton(),
            SizedBox(height: 10),
            _buildDividerWithText('OR sign up with'),
            SizedBox(height: 20),
            _buildSocialSignupButtons(),
            SizedBox(height: 20),
            _buildLoginLink(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 250,
      width: 500,
      color: Color(0xFF6154D5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Let\'s Get Started',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Sign up now and unlock your fitness journey',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 20),
          _buildCategoryImagesRow(),
        ],
      ),
    );
  }

  Widget _buildCategoryImagesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildImage('Images/weightloss.png'),
        _buildImage('Images/weightscales.png'),
        _buildImage('Images/dairy.png'),
        _buildImage('Images/vegetable.png'),
        _buildImage('Images/fruit.png'),
      ],
    );
  }

  Widget _buildImage(String imagePath) {
    return Image(image: AssetImage(imagePath), height: 50, width: 50);
  }

  Widget _buildTextField(String hintText, String labelText,
      {bool obscureText = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          hintStyle: TextStyle(color: Colors.black),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }

  Widget _buildTermsAndPrivacyText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('By continuing, you agree to our ', style: TextStyle(fontSize: 12)),
              _buildGestureText('Terms of Service', () {
                // Handle Terms of Service tap
              }),
              Text(' and ', style: TextStyle(fontSize: 12)),
              _buildGestureText('Privacy Policy', () {
                // Handle Privacy Policy tap
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGestureText(String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _buildSignupButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            // Change to the appropriate function or remove if not needed
            // signup();
          },
          child: Text(
            'Sign up',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: Color(0xFF6154D5),
          ),
        ),
      ),
    );
  }

  Widget _buildDividerWithText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 1,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(text),
          ),
          Expanded(
            child: Container(
              height: 1,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialSignupButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildSocialImage('Images/facebook.png', () {
            // Handle Facebook signup
          }),
          _buildSocialImage('Images/google.png', () {
            // Handle Google signup
          }),
          _buildSocialImage('Images/IOS.png', () {
            // Handle iOS signup
          }),
        ],
      ),
    );
  }

  Widget _buildSocialImage(String imagePath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        imagePath,
        height: 40,
        width: 40,
      ),
    );
  }

  Widget _buildLoginLink() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Already have an account?'),
          SizedBox(width: 5),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GoalSetting()),
              );
            },
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
