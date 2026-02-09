import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webboradkakkak/screen/profile_screen.dart';
import 'package:webboradkakkak/screen/Home_screen.dart';
import 'package:webboradkakkak/screen/login_screen.dart';
class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  // สีประจำสโมสรบาร์เซโลน่า
  final Color barcaBlue = const Color(0xFF004D98);
  final Color barcaRed = const Color(0xFFA50044);
  final Color barcaGold = const Color(0xFFEDBB00);

  // สไตล์ข้อความพื้นฐานสำหรับโหมดเต็มจอ (สีขาว + เงา)
  final TextStyle titleStyle = const TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    shadows: [
      Shadow(blurRadius: 10, color: Colors.black, offset: Offset(2, 2)),
    ],
  );

  final TextStyle bodyStyle = const TextStyle(
    fontSize: 18,
    color: Colors.white,
    shadows: [
      Shadow(blurRadius: 8, color: Colors.black, offset: Offset(1, 1)),
    ],
  );

  @override
  Widget build(BuildContext context) {
    // กำหนดรายละเอียดแต่ละหน้า
    final List<PageViewModel> pages = [
      PageViewModel(
        title: "Welcome to Barcelona FC",
        body: "Your gateway to the world of football.",
        image: _buildFullscreenImage('lib/images/page-1.jpg'),
        decoration: PageDecoration(
          fullScreen: true, // ทำให้ภาพเต็มจอ
          titleTextStyle: titleStyle,
          bodyTextStyle: bodyStyle,
        ),
      ),
      PageViewModel(
        title: "What is Barcelona FC?",
        body: "Barcelona FC is a world-renowned football club based in Barcelona, Spain. It is one of the most successful and popular football clubs in the world.",
        image: _buildFullscreenImage('lib/images/page-2.jpg'),
        decoration: PageDecoration(
          fullScreen: true,
          titleTextStyle: titleStyle,
          bodyTextStyle: bodyStyle,
        ),
      ),
      PageViewModel(
        title: "Why Barcelona FC?",
        body: "Barcelona FC offers several advantages over traditional football clubs, such as its user-friendly interface and interactive features.",
        image: _buildFullscreenImage('lib/images/page-3.jpg'),
        decoration: PageDecoration(
          fullScreen: true,
          titleTextStyle: titleStyle,
          bodyTextStyle: bodyStyle,
        ),
      ),
    ];

    return Scaffold(
      body: IntroductionScreen(
        pages: pages,
        // ปรับแต่งจุดบอกตำแหน่ง (Dots)
        dotsDecorator: DotsDecorator(
          color: Colors.white.withOpacity(0.5),
          activeColor: barcaGold,
          size: const Size(10, 10),
          activeSize: const Size(22, 10),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        
        // ปุ่มควบคุม
        showSkipButton: true,
        skip: Text('Skip', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        
        showNextButton: true,
        next: Icon(Icons.arrow_forward, color: barcaGold),
        
        showDoneButton: true,
        done: Text('Done', style: TextStyle(fontWeight: FontWeight.bold, color: barcaRed)),

        // เมื่อกด Done
        onDone: () async {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool('seen', true);

          if (context.mounted) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          }
        },

        // ปรับแต่งสีพื้นหลังของปุ่มด้านล่าง (เผื่อกรณีภาพสว่างเกินไป)
        // isBottomSafeArea: true,
        // isTopSafeArea: true,
      ),
    );
  }

  // Helper Function สำหรับสร้าง Widget รูปภาพเต็มจอ
  Widget _buildFullscreenImage(String assetName) {
    return Image.asset(
      assetName,
      fit: BoxFit.cover, // ขยายรูปให้เต็มพื้นที่โดยไม่เสียสัดส่วน
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }
}