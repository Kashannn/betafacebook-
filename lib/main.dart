import 'package:flutter/material.dart';
import 'package:robocoding/OnboardingScreens/Login.dart';

import 'Dashboard/Dashboard.dart';
import 'Dashboard/Profile.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
