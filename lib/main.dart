import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webboradkakkak/screen/login_screen.dart';
import 'screen/profile_screen.dart';
import 'screen/intro_screen.dart';
import 'screen/Home_screen.dart';
import 'package:webboradkakkak/screen/login_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

bool seen = false;
void main() async{
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  seen = prefs.getBool('seen') ?? false;

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
        home: seen == true ? LoginScreen() : IntroScreen(),
    );
  }
}