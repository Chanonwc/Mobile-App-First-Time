import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/my_constant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: LightBgColor,
    body: Stack(
      children: [
        // --- พื้นหลังตกแต่ง ---
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                LightBgColor,
                LightBgColor2.withOpacity(0.3),
              ],
            ),
          ),
        ),
        Positioned(
          top: -50,
          right: -50,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: primaryColor.withOpacity(0.05),
          ),
        ),
        Positioned(
          bottom: 100,
          left: -30,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: LightBgColor2.withOpacity(0.2),
          ),
        ),

        // --- เนื้อหาหลัก ---
        SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: primaryColor.withOpacity(0.2), width: 4),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 15,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: const CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(
                            'https://external-preview.redd.it/lamine-yamal-will-sign-new-deal-at-barcelona-tomorrow-v0-QG07yuFJoyzR4DJxBXiEpWogc1eVj6GIaEqRuwPxKu4.jpg?width=1080&crop=smart&auto=webp&s=f5d55baf1e927587fd152c26ffed77a0f553da21',
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: primaryColor,
                          child: Icon(Icons.edit, size: 18, color: LightBgColor),
                        ),
                      ),
                    ],
                  ),
            SizedBox(height: 10),
            Text('Lamine Yamal', style: headerStyle),

            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: LightBgColor2),

              onPressed: () {},
              child: Text("Lamine.yamal@email.com", style: bodyStyle),
            ),

            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: LightBgColor2,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit, color: primaryColor),
                    Text("Edit Profile", style: bodyStyle),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: primaryColor),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: LightBgColor2,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.lock_outline, color: primaryColor),
                    Text("Add Pin", style: bodyStyle),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: primaryColor),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: LightBgColor2,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.settings, color: primaryColor),
                    Text("Settings", style: bodyStyle),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: primaryColor),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: LightBgColor2,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.person_add, color: primaryColor),
                    Text("invite friends", style: bodyStyle),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: primaryColor),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.logout, color: LightBgColor2),
                    Text(
                      "Logout",
                      style: TextStyle(
                        color: LightBgColor2,
                        fontFamily: GoogleFonts.oswald().fontFamily,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
              ),
            ),
          ),
        ),
      ],
    ),
      bottomNavigationBar: Padding(
  padding: const EdgeInsets.all(10.0),
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      boxShadow: [
        BoxShadow(color: Colors.black26, spreadRadius: 0, blurRadius: 10),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BottomNavigationBar(
        backgroundColor: LightBgColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: LightBgColor2,
        elevation: 10,
        unselectedItemColor: Color(0xFFB0B0B0),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "school"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings",),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
            ),
          ),
        ),
      ), // ปิด Padding
    ); // ปิด Scaffold
  } // ปิด build
}