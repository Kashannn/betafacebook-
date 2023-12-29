import 'package:flutter/material.dart';
import 'package:robocoding/OnboardingScreens/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            SizedBox(height: 15),
            _buildTextField('Email', 'Email'),
            SizedBox(height: 15),
            _buildTextField('Password', 'Password', obscureText: true),
            SizedBox(height: 20),
            _buildRememberMeAndForgotPassword(),
            SizedBox(height: 20),
            _buildLoginButton(),
            SizedBox(height: 10),
            _buildDividerWithText('OR LOGIN WITH'),
            SizedBox(height: 20),
            _buildSocialLoginButtons(),
            SizedBox(height: 40),
            _buildSignupLink(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 300,
      width: 500,
      color: Color(0xFF6154D5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildCategoryImagesRow(),
          SizedBox(height: 10),
          _buildWelcomeText(),
          SizedBox(height: 10),
          _buildDescriptionText(),
          SizedBox(height: 10),
          _buildCategoryImagesRow(),
          SizedBox(height: 10),
          _buildAdditionalImagesRow(),
        ],
      ),
    );
  }

  Widget _buildCategoryImagesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildImage('Images/dairy.png'),
        SizedBox(width: 10),
        _buildImage('Images/vegetable.png'),
        SizedBox(width: 10),
        _buildImage('Images/fruit.png'),
      ],
    );
  }

  Widget _buildImage(String imagePath) {
    return Image(
      image: AssetImage(imagePath),
      height: 50,
      width: 50,
    );
  }

  Widget _buildWelcomeText() {
    return Text(
      'Welcome Back!',
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildDescriptionText() {
    return Text(
      'Please login to access your account',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }

  Widget _buildAdditionalImagesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildImage('Images/weightloss.png'),
        SizedBox(width: 10),
        _buildImage('Images/weightscales.png'),
        // You can add more images here as needed
      ],
    );
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

  Widget _buildRememberMeAndForgotPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Checkbox(
            value: false, // Set the initial value accordingly
            onChanged: (value) {
              // Handle checkbox state
            },
          ),
          Text('Remember Me'),
          Spacer(),
          TextButton(
            onPressed: () {
              // Add functionality for "Forgot Password"
            },
            child: Text(
              'Forgot Password',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton() {
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
            'Login',
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

  Widget _buildSocialLoginButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildImageContainer('Images/facebook.png'),
          _buildImageContainer('Images/google.png'),
          _buildImageContainer('Images/IOS.png'),
        ],
      ),
    );
  }

  Widget _buildImageContainer(String imagePath) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white70.withOpacity(0.9),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () {
          // Handle login with Facebook/Google/IOS
        },
        child: Image.asset(
          imagePath,
          height: 40,
          width: 40,
        ),
      ),
    );
  }

  Widget _buildSignupLink() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('New here?'),
          SizedBox(width: 5),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Signup()),
              );
            },
            child: Text(
              'Signup',
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
