import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? _image;

  Future<void> _getImage() async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                // Handle save button click
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Personal Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'You can update your profile photo and personal details here',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            // Profile Image Picker
            InkWell(
              onTap: _getImage,
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey,
                backgroundImage: _image != null ? FileImage(_image!) : null,
                child: _image == null
                    ? Icon(
                  Icons.camera_alt,
                  size: 40,
                  color: Colors.white,
                )
                    : null,
              ),
            ),
            SizedBox(height: 16),
            // TextFields for Full Name, Age, and Occupation
            CustomTextField(labelText: 'Full Name', hintText: 'Enter Your Name'),
            SizedBox(height: 8),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Age',
                border: OutlineInputBorder(),
              ),
              items: List.generate(100, (index) => (index + 1).toString())
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle age dropdown change
              },
            ),
            SizedBox(height: 8),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Occupation',
                border: OutlineInputBorder(),
              ),
              items: ['Engineer', 'Doctor', 'Teacher', 'Other']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle occupation dropdown change
              },
            ),
            SizedBox(height: 24),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Change Password',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 15),
            CustomTextField(labelText: 'Old Password', hintText: 'Enter Old Password', isObscure: true),
            SizedBox(height: 8),
            CustomTextField(labelText: 'New Password', hintText: 'Enter New Password', isObscure: true),
            SizedBox(height: 8),
            CustomTextField(labelText: 'Confirm Password', hintText: 'Confirm New Password', isObscure: true),
            SizedBox(height: 15),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Additional Health Information',
                border: OutlineInputBorder(),
              ),
              items: ['Engineer', 'Doctor', 'Teacher', 'Other']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle occupation dropdown change
              },
            ),
            SizedBox(height: 16),
            Text(
              'You can update your Additional Health Information details here',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 24),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Chronic illnesses',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 15),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Choose from list',
              ),
              items: ['Engineer', 'Doctor', 'Teacher', 'Other']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle occupation dropdown change
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              minLines: 6,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Specify your illnesses',
              ),
            ),
            SizedBox(height: 24),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Are you on any medications ?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 15),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Choose from list',
                border: OutlineInputBorder(),
              ),
              items: ['Engineer', 'Doctor', 'Teacher', 'Other']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle occupation dropdown change
              },
            ),
            SizedBox(height: 15),
            TextFormField(
              minLines: 6,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Type response here',
              ),
            ),
            SizedBox(height: 24),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Tobacco use',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 15),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Choose from list',
                border: OutlineInputBorder(),
              ),
              items: ['Engineer', 'Doctor', 'Teacher', 'Other']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle occupation dropdown change
              },
            ),
            SizedBox(height: 24),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Alcohol consumption',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 15),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Choose from list',
                border: OutlineInputBorder(),
              ),
              items: ['Engineer', 'Doctor', 'Teacher', 'Other']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle occupation dropdown change
              },
            ),
            SizedBox(height: 24),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Are you on any allergies ?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 15),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Choose from list',
                border: OutlineInputBorder(),
              ),
              items: ['Engineer', 'Doctor', 'Teacher', 'Other']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle occupation dropdown change
              },
            ),
            SizedBox(height: 15),
            TextFormField(
              minLines: 6,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Specify your allergy',
              ),
            ),
            SizedBox(height: 24),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Any past surgeries or physical injuries ?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 15),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Choose from list',
                border: OutlineInputBorder(),
              ),
              items: ['Engineer', 'Doctor', 'Teacher', 'Other']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle occupation dropdown change
              },
            ),
            SizedBox(height: 15),
            TextFormField(
              minLines: 6,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Type response here',
              ),
            ),
            SizedBox(height: 24),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Any dietary restrictions ?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 15),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Choose from list',
                border: OutlineInputBorder(),
              ),
              items: ['Engineer', 'Doctor', 'Teacher', 'Other']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle occupation dropdown change
              },
            ),
            SizedBox(height: 24),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Pregnancy or Postpartum:?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 15),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Choose from list',
                border: OutlineInputBorder(),
              ),
              items: ['Engineer', 'Doctor', 'Teacher', 'Other']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle occupation dropdown change
              },
            ),
            SizedBox(height: 24),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Menopause ?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 15),
            SizedBox(height: 15),
            TextFormField(
              minLines: 6,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Type response here',
              ),
            ),
          ],



        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool isObscure;

  const CustomTextField({
    required this.labelText,
    required this.hintText,
    this.isObscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscure,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: labelText,
        hintText: hintText,
      ),
    );
  }
}
