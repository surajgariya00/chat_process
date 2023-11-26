import 'package:chat_process/Screens/bottom_navigation.dart';
import 'package:chat_process/Screens/home_screen.dart';
import 'package:chat_process/Screens/login_screen.dart';
import 'package:chat_process/Screens/project_screen.dart';
import 'package:chat_process/Screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF1a232e), // Primary Color
        primaryColorLight: const Color(0xFFd86dfc), // Secondary Color
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      title: 'Flutter Demo',
      home: const SignUpScreen(),
    );
  }
}
