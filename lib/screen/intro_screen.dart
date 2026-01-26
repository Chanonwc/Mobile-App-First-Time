import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:webboradkakkak/constant/my_constant.dart';
import 'package:webboradkakkak/screen/profile_screen.dart';


class IntroScreen extends StatelessWidget {
   IntroScreen({super.key});

  // // เพิ่มไว้ด้านบนสุดของ build หรือใน class
  // final Color barcaBlue = const Color(0xFF004D98);
  // final Color barcaRed = const Color(0xFFA50044);
  // final Color barcaGold = const Color(0xFFEDBB00);

  final List<PageViewModel> pages = [
    PageViewModel(
      title: "Welcome to Barcelona FC",
      body: "Your gateway to the world of football.",
      image: Image.asset('lib/images/page-1.png'),
      decoration:  PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: const Color(0xFF004D98)),
        bodyTextStyle: TextStyle(fontSize: 16),
      ),
    
    ),

     PageViewModel(
      title: "What is Barcelona FC?",
      body: "Barcelona FC is a world-renowned football club based in Barcelona, Spain. It is one of the most successful and popular football clubs in the world.",
      image: Image.asset('lib/images/page-2.png'),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 16),
      ),
    ),
     PageViewModel(
      title: "Why Barcelona FC?",
      body: "Barcelona FC offers several advantages over traditional football clubs, such as its user-friendly interface, interactive features, and seamless integration with online courses. It also provides a secure and reliable platform for students to access and collaborate on course materials.",
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
          color:const Color(0xFFBDBDBD),
          activeColor: const Color(0xFFEDBB00),
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