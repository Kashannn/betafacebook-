import 'package:flutter/material.dart';
import 'package:robocoding/OnboardingScreens/Login.dart';

import 'Blog/DailyHealthBlog.dart';
import 'ChatNotification/Notificationn.dart';
import 'ChatNotification/chat.dart';
import 'Dashboard/AdditionalHealth.dart';
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
      home: Dashboard(),
    );
  }
}
