import 'package:flutter/material.dart';
// import 'package:webboradkakkak/screen/Home_screen.dart';
import 'screen/profile_screen.dart';

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
      title: 'Flutter Demo',
      home: const ProfileScreen(),
    );
  }
}