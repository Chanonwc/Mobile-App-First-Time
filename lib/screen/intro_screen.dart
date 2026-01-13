import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:webboradkakkak/constant/my_constant.dart';
import 'package:webboradkakkak/screen/profile_screen.dart';


class IntroScreen extends StatelessWidget {
   IntroScreen({super.key});

  final List<PageViewModel> pages = [
    PageViewModel(
      title: "Welcome to WebBoard Kakkak",
      body: "Your gateway to seamless online learning and collaboration.",
      image: Image.asset('lib/images/page-1.png'),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16),
      ),
    
    ),

     PageViewModel(
      title: "What is WebBoard Kakkak?",
      body: "WebBoard Kakkak is a web-based learning platform that provides a user-friendly interface for students to access and collaborate on online courses. It offers a range of features, including course creation, assignment submission, discussion forums, and interactive quizzes, making it an ideal platform for educational purposes.",
      image: Image.asset('lib/images/page-2.png'),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16),
      ),
    ),
     PageViewModel(
      title: "Why WebBoard Kakkak?",
      body: "WebBoard Kakkak offers several advantages over traditional learning platforms, such as its user-friendly interface, interactive features, and seamless integration with online courses. It also provides a secure and reliable platform for students to access and collaborate on course materials.",
      image: Image.asset('lib/images/page-3.png'),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16),
      ),
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: pages,
        dotsDecorator: DotsDecorator(
          color: Colors.blue,
          activeColor: Colors.red,
          size: const Size(10, 10),
          activeSize: const Size(15, 15),
          spacing: EdgeInsets.all(0.8),
        ),
        showSkipButton: true,
        skip: const Text('Skip'),

        showNextButton: true,
        next: const Icon(Icons.arrow_forward),

        showDoneButton: true,
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),

        onDone: ()async{

          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool('seen', true); //รอจนกระทั่งจนกว่าคำสั่งนี้จะทำเสร็จแล้ว

            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => ProfileScreen()),
              
            );
        },
      ),


    );
  }
}